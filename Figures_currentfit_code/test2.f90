program main
implicit none
integer, parameter:: dim=4
integer ii,max_time,iskip
double precision time,y(dim),fun(dim),var(dim)
double precision  dt

EXTERNAL rk4
EXTERNAL Derives

open(unit=10,file='r.dat')
open(unit=11,file='INMDA.dat')

iskip=100
time=0.0d0
dt=0.000010d0
max_time=300000

y(1)=0.0d0 
y(2)=0.0d0
y(3)=0.0d0
y(4)=0.0d0
DO ii = 1, max_time

   time = time + dt


   Call Derives(time,y,fun,var)
   Call rk4(y,fun,time,y,Derives,var)

   !if(ii.ge. 1000000 .and. mod(ii,iskip)==0) then
   write(10,*) time, y(3)
   write(11,*) time, var(1)

   !end if
END DO
end program

subroutine Derives(t,y,fun,var)
implicit none
integer,parameter:: dim=4
double precision t,y(dim),fun(dim),var(dim)
double precision R,AR,A2R,O,D
double precision kon,koff,beta,alpha,kd,kr
double precision glu
double precision kc1c2,kc2c1,kc2c3,kc3c2,kc3o,koc3,kc3d,kdc3
double precision b1,b2,v,Inorm,INMDA,Imax
AR = y(1)
A2R = y(2)
O = y(3)
D = y(4)

R = 1.0d0-AR-A2R-O-D! R
! FOR 100 uM glutamate concentration
!kon =0.514999964194255d2 !   uM/sec

!koff =1.649999990776085d2 !  1/sec 
!beta = 9.499999999732127d2!1/sec
!alpha =0.319999995801798d2! 1/sec 
!kd = 0.849999997127527d2!     % 1/sec
!kr =0.044999968235918d2 !     % 1/sec

! !for 0.1 uM glutamte concentration
!kon =3.985d2 !  uM/sec

!koff = 1.389d2 !1/sec 
!beta = 3.002d2!1/sec
!alpha =0.334d2! 1/sec 
!kd = 0.732d2!  % 1/sec
!kr = 0.0344d2 ! % 1/sec

! For 3.0 uM glutamte concentration
kon = 7.504771682936068d2 !uM/sec

koff = 1.403575360369425d2 !1/sec 
beta =6.999886699779998d2!1/sec
alpha= 0.323228818120368d2! 1/sec 
kd = 0.799751242374540d2!  % 1/sec
kr = 0.040803230395989d2 ! % 1/sec

! For ampa 10
!kon=0.115903641420751d2
!koff=1.299900233060631d2
!beta=3.999781614288841d2
!alpha=0.334224549694656d2
!kd=0.826720403598602d2
!kr=0.010511703316430d2

!for ampa 1
!kon=1.040888508340635d2
!koff=0.808823542737683d2
!beta=0.685521862029382d2
!alpha=0.635395723508529d2
!kd=0.872671120703195d2
!kr=0.037632106849758d2


if (t .ge.0.0d0 .and. t .lt. 2.0d0) then
    glu =0.030d0! %b(2); for Cai_trace3

else
    glu = 0.0d0
end if

kc1c2 = 2.0d0*glu*kon
kc2c1 = koff
kc2c3 = glu*kon
kc3c2 = 2.0d0*koff
kc3o  = beta
koc3  = alpha
kc3d  = kd
kdc3  = kr

!b1=0.0390d0! mV^-1
!b2=0.00850d0! mV^-1
!v=-80.0d0
!Imax=1.0d0
!Inorm= O*b1*v/(1.0d0 + exp(b2*v))
!INMDA=Imax*Inorm
!write(*,*) INMDA 
!var(1)=INMDA

fun(1)= kc1c2*R+kc3c2*A2R-(kc2c1+kc2c3)*AR!    %C2 AR
fun(2) = kc2c3*AR+koc3*O-(kc3c2+kc3o)*A2R!      %C3 A2R
fun(3) = kc3o*A2R-koc3*O!                        %O
fun(4) = kc3d*A2R-kdc3*D!                        %D
end subroutine Derives

SUBROUTINE rk4(y,fun,t,yout,Derivs,var)

  implicit none
  integer, parameter:: dim=4
  INTEGER i
  double precision h,fun(dim),y(dim),yout(dim),t, k1(dim), k2(dim),&
       k3(dim), k4(dim), yt(dim),dyt(dim),var(dim),dt
  EXTERNAL derivs
  dt=0.00001d0
  h=dt
  do i = 1, dim
     k1(i) = h * fun(i)                              ! k1 = h*f(tn,yn)                                                                                                                                                                                                                                                                                                           
     yt(i)=y(i)+ k1(i)/2.0d0                         ! Compute y(n) + k1/2 and store it in yt                                                                                                                                                                                                                                                                                    
  end do
  call derivs(t+h/2,yt,dyt,var)                       ! Get f(tn+h/2,yn+k1/2) and store in dyt.                                                                                                                                                                                                                                                                           
  do i = 1, dim
     k2(i) = h * dyt(i)                              ! k2 = h *  f(tn+h/2,yn+k1/2)                                                                                                                                                                                                                                                                                               
     yt(i)=y(i)+k2(i)/2.0d0                  ! Compute y(n) + k2/2 and store it in yt                                                                                                                                                                                                                                                                                            
  end do
  call derivs(t+h/2,yt,dyt,var)                       ! Get f(tn+h/2,yn+k2/2) and store in dyt.                                                                                                                                                                                                                                                                           
  do i = 1, dim
     k3(i) = h * dyt(i)                              ! k3 = h *  f(tn+h/2,yn+k2/2)                                                                                                                                                                                                                                                                                               
     yt(i)=y(i)+k3(i)                                ! Compute y(n) + k3 and store it in yt                                                                                                                                                                                                                                                                                      
  end do
  call derivs(t+h,yt,dyt,var)                     ! Get f(tn+h,yn+k3) and store in dyt.                                                                                                                                                                                                                                                                                       
  do i = 1, dim
     k4(i) = h * dyt(i)                              ! k4 = h *  f(tn+h,yn+k3)                                                                                                                                                                                                                                                                                                   
     yout(i)=y(i)+(k1(i)+2.0d0*k2(i)+2.0d0*k3(i)+k4(i))/6.0d0  !  Accumulate increments with proper weights.                                                                                                                                                                                                                                                                     
  end do
END

 
  
     
  
