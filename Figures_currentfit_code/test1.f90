program main
implicit none
integer, parameter:: dim=1
integer ii,max_time,iskip
double precision time,yn(dim),y(dim),fun(dim),var(11)
double precision  dt

EXTERNAL rk4
EXTERNAL Derives

open(unit=10,file='r.dat')
open(unit=11,file='INMDA.dat')

iskip=100
time=0.000000d0
dt=0.0010d0
max_time=10000000

y(1)=0.0d0 

DO ii = 1, max_time

   time = time + dt


   Call Derives(time,y,fun,var)
   Call rk4(y,fun,time,y,Derives,var)

   if(ii.ge. 1000000 .and. mod(ii,iskip)==0) then
      write(10,*) time, y(1)
      write(11,*) time, var(1)

   end if
END DO
end program

subroutine Derives(t,y,fun,var)
  ! This program is used to calcualte the glutamate and NMDA mediated current.
  ! hc(hills coeffient) and Ec50(agonist) concentrations were obtained from model fitting
  ! alpha forward rate constant is selected using heuristic approach and used to calculate the value of beta 
  !bacakward rate constant is calulated using the formula beta = Ec50*alpha
  implicit none
  integer, parameter:: dim=1
  double precision t,y(dim),fun(dim),var(dim)
  double precision glue,alpha,r,hc,beta,c,tau,Ec50fit
  double precision Imax,Inorm,INMDA,b1,b2,b3,v
  
  ! NMDA mediated
  
  hc=0.330d0!1.19820d0!0.33d0!1.19820d0 ! Hills coefficient
  EC50fit=0.2937d0 ! agonist concentratin in the units uM
  alpha=7.20d0!0.0012d0 ! Forward rate constant in the units of uM^-1ms^-1 
  b1=0.0390d0! mV^-1
  b2=0.00850d0! mV^-1
  b3=0.0d0!-0.059 
  Imax=0.10d0!120.0d0 ! Maximum value of the current in the unit of pA for the potential -40mV

  !glutamate mediated
  
  !DAP5current
  
  !hc=0.460d0!0.6035d0! 
  !Ec50fit=0.94050d0
  !alpha=0.0072d0!
  !Imax=140.0d0
  !b1=0.0350d0 !mV^-1
  !b2=0.000670d0!mV^-1
  !b3=0.0!-0.1520d0 ! 
  
  !NBQX
  !hc=0.5d0!0.630590d0
  !EC50fit=32.6720d0
  !alpha=0.00072d0!
  !b1=0.3570d0 !mV^-1
  !b2=0.000679 !mV^-1
  !b3=0.0d0!-0.152270d0 
  !Imax=0.5d0
  
  beta=(Ec50fit)**hc*alpha !backward rate constant in the unit of ms^-1  Ec50=beta/alpha 


  !exogenously applied glutamate in the unit of uM for 2000 ms
  
  if (t.ge.4000.0d0 .and. t.le.6000.0d0) then
     
     glue=100.0d0
 !elseif(t.ge.4026.0d0 .and. t.le.6000.0d0) then
     
     !glue=0.01d0/9.0 !NBQX
     !glue=0.01d0 ! DAP
     !glue=0.15d0!NMDA mediated
  else
     glue=0.0d0
  end if
 
  c=0.0d0 ! if we fit including y-intercept then  c has fitted value  
  r=y(1)+c ! Gating variable for the NMDA receptor(-)
  
  
  v=-80.0d0 ! one of the  holding potential in the unit of mV
  
  Inorm= r*b1*v/(1.0d0 + exp(b2*v))! normalized current  with the maximum value of the current at hloding potential -40 mV
  INMDA= Imax*Inorm+b3 ! Gutamate or NMDA mediated current in the unit of pA
  var(1)= INMDA

  !output
  
  fun(1)=(glue)**hc*alpha*(1.0d0-r)-r*beta ! r=1/(1+(EC50/glue)^n) this equations is compared with hills equations &
  ! write the equations for steady state
  


 
end subroutine Derives


SUBROUTINE rk4(y,fun,t,yout,Derivs,var)

  implicit none
  integer, parameter:: dim=1
  INTEGER i
  double precision h,fun(dim),y(dim),yout(dim),t, k1(dim), k2(dim),&
       k3(dim), k4(dim), yt(dim),dyt(dim),var(11),dt
  EXTERNAL derivs
  dt=0.001d0
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
