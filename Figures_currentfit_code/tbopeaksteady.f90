program main
implicit none
integer, parameter:: dim=5
integer ii,max_time,iskip
double precision time,y(dim),fun(dim),var(dim),b(300000)
double precision  dt,iii,peak(1000),stead,glue,v,iv

EXTERNAL rk4
EXTERNAL Derives

open(unit=10,file='r.dat')
open(unit=11,file='INMDA.dat')
open(unit=100,file='peaksteadytbo.dat')




glue=0.098d0
do iv= 1, 10001
   

   iskip=100
   time=0.0d0
   dt=0.000010d0
   max_time=300000

   y(1)=0.0d0 
   y(2)=0.0d0
   y(3)=0.0d0
   y(4)=0.0d0
   y(5)=0.0d0
   
   DO ii = 1, max_time

      time = time + dt


      Call Derives(time,y,fun,var,glue)
      Call rk4(y,fun,time,y,Derives,var,glue)

      !if(ii.ge. 1000000 .and. mod(ii,iskip)==0) then
     ! write(10,*) time, y(3)
      !write(11,*) time, var(1)
      b(ii)=y(3)
      if (ii .eq. 180000) then
         stead =y(3)
      end if
   END DO
   write(100,*) glue, maxval(b),stead
   glue=glue+0.1
end do
end program main

subroutine Derives(t,y,fun,var,glue)
implicit none
integer,parameter:: dim=5
double precision t,y(dim),fun(dim),var(dim)
double precision C1,C2,O,D1,D2,C0
double precision Rb,Rmu1,Rmu2,Rd,Rr,Ro,Rc
double precision glu,glue
double precision kc0c1,kc1c0,kc1c2,kc2c1,kc2o,koc2,kc1d1,&
     kd1c1,kc2d2,kd2c2
double precision b1,b2,v,Inorm,INMDA,Imax
C1 = y(1)

C2 = y(2)
O = y(3)
D1 = y(4)
D2=y(5)

C0 = 1-C1-C2-O-D1-D2





! model parameters at 1000.0uM glutamte
!Rb= !uM^-1s^-1
!Rmu1 =   !s^-1  
!Rmu2 =  !s^-1 
!Rd =   !s^-1
!Rr =   !s^-1   
!Ro =    !s^-1  
!Rc= !s^-1
Rb=0.215987916304682d2 
Rmu1=0.040597319592650d2
Rmu2=0.391544747928199d2
Rd=0.504343944480852d2
Rr=0.017042896941856d2
Ro=7.008605865353812d2
Rc=0.171749388264924d2


if (t .ge. 0.0 .and. t .lt. 2.0) then
    
    glu=glue
else
    glu = 0.0
end if


kc0c1=Rb*glu
kc1c0=Rmu1
kc1c2=kc0c1
kc2c1=Rmu2
kc2o=Ro
koc2=Rc
kc1d1=Rd
kd1c1=Rr
kc2d2=kc1d1
kd2c2=kd1c1


fun(1)=kc0c1*C0-(kc1c0+kc0c1+kc1d1)*C1+kc2c1*C2+kd1c1*D1!C1
fun(2)=kc1c2*C1+koc2*O+kd2c2*D2-(kc2c1+kc2o+kc2d2)*C2 !C2
fun(3)=kc2o*C2-koc2*O ! O
fun(4)=kc1d1*C1-kd1c1*D1 ! D1
fun(5)=kc2d2*C2-kd2c2*D2 !D2
end subroutine Derives

SUBROUTINE rk4(y,fun,t,yout,Derivs,var,glue)

  implicit none
  integer, parameter:: dim=5
  INTEGER i
  double precision h,fun(dim),y(dim),yout(dim),t, k1(dim), k2(dim),&
       k3(dim), k4(dim), yt(dim),dyt(dim),var(dim),dt,glue
  EXTERNAL derivs
  dt=0.00001d0
  h=dt
  do i = 1, dim
     k1(i) = h * fun(i)                              ! k1 = h*f(tn,yn)                                                                                                                                                                                                                                                                                                           
     yt(i)=y(i)+ k1(i)/2.0d0                         ! Compute y(n) + k1/2 and store it in yt                                                                                                                                                                                                                                                                                    
  end do
  call derivs(t+h/2,yt,dyt,var,glue)                       ! Get f(tn+h/2,yn+k1/2) and store in dyt.                                                                                                                                                                                                                                                                           
  do i = 1, dim
     k2(i) = h * dyt(i)                              ! k2 = h *  f(tn+h/2,yn+k1/2)                                                                                                                                                                                                                                                                                               
     yt(i)=y(i)+k2(i)/2.0d0                  ! Compute y(n) + k2/2 and store it in yt                                                                                                                                                                                                                                                                                            
  end do
  call derivs(t+h/2,yt,dyt,var,glue)                       ! Get f(tn+h/2,yn+k2/2) and store in dyt.                                                                                                                                                                                                                                                                           
  do i = 1, dim
     k3(i) = h * dyt(i)                              ! k3 = h *  f(tn+h/2,yn+k2/2)                                                                                                                                                                                                                                                                                               
     yt(i)=y(i)+k3(i)                                ! Compute y(n) + k3 and store it in yt                                                                                                                                                                                                                                                                                      
  end do
  call derivs(t+h,yt,dyt,var,glue)                     ! Get f(tn+h,yn+k3) and store in dyt.                                                                                                                                                                                                                                                                                       
  do i = 1, dim
     k4(i) = h * dyt(i)                              ! k4 = h *  f(tn+h,yn+k3)                                                                                                                                                                                                                                                                                                   
     yout(i)=y(i)+(k1(i)+2.0d0*k2(i)+2.0d0*k3(i)+k4(i))/6.0d0  !  Accumulate increments with proper weights.                                                                                                                                                                                                                                                                     
  end do
END
