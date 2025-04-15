program main
implicit none
integer, parameter:: dim=4
integer ii,max_time,iskip
double precision time,y(dim),fun(dim),var(dim),b(300000)
double precision  dt,iii,peak(1000),stead,glue,v,iv

EXTERNAL rk4
EXTERNAL Derives

open(unit=10,file='r.dat')
open(unit=11,file='INMDA.dat')
open(unit=100,file='peaksteady.dat')




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
end program

subroutine Derives(t,y,fun,var,glue)
implicit none
integer,parameter:: dim=4
double precision t,y(dim),fun(dim),var(dim)
double precision R,AR,A2R,O,D
double precision kon,koff,beta,alpha,kd,kr
double precision glu,glue
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
!kon=3.985027072083218d2
!koff=   1.389396644825619d2
!beta=   3.002450637305251d2
!alpha=   0.334536112427184d2
!kd=   0.732086531846783d2
!kr=   0.034428370278202d2


! For 3.0 uM glutamte concentration
!kon=0.304918619322853d2 !uM/sec
!koff=1.200203080728152d2!1/sec
!beta=6.999636101423289d2!1/sec
!alpha=0.320807037234454d2!1/sec
!kd= 0.800040223215052d2!1/sec
!kr=0.043783178439818d2!1/sec

! For ampa 10uM
kon=0.618937933641771d2
koff= 1.575452019138978d2
beta=  0.746766158717147d2
alpha= 0.350068960694253d2
kd= 0.828433709246555d2
kr= 0.028275314398948d2

!for ampa 1uM
!kon=71.000000000000000d0
!koff=14.900000000000000d0
!beta= 78.000000000000000d0
!alpha=31.899999999999999d0
!kd=86.000000000000000d0
!kr=3.730000000000000d0

! nmda300nm
!kon=0.868697798776318d2
!koff=0.538425606135037d2
!beta=3.996747215166432d2
!alpha=0.345311752565348d2
!kd= 0.329928001084462d2
!kr=0.026045052303336d2
!nmda10uM
!kon= 5.009845443914087d2
!koff= 1.199524724431919d2
!beta= 4.959840828450651d2
!alpha= 0.121432322418648d2
!kd= 0.761731716582671d2
!kr=0.016126921506877d2

!nmda30nm
!kon= 7.956503200270574d2
!koff= 1.550715228221620d2
!beta= 2.989686503929791d2
!alpha= 0.444748640641169d2
!kd= 0.242738733743316d2
!kr=  0.021273293417878d2

if (t .ge.0.0d0 .and. t .lt. 2.0d0) then
    glu =glue!0.030d0! %b(2); for Cai_trace3

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

SUBROUTINE rk4(y,fun,t,yout,Derivs,var,glue)

  implicit none
  integer, parameter:: dim=4
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

 
  
     
  
