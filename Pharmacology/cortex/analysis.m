clc
clear all

load Nak.dat
load Jdap.dat
load Cak.dat
load JNCX.dat
cae=2000;
Nae=140.0;
ksat=0.1;
eta=0.35;
KNCXmN=87.5;
KNCXmC=1380;
VA=-75.0;
Imax=0.001;
[NaA,CaA]=meshgrid(Nak(:,2),Cak(:,2));
INCXfun= Imax*Nae^3/(KNCXmN^3+Nae^3)* cae/(KNCXmC+cae)*...
                (NaA^3./Nae^3*exp(eta*VA./26.6d0)-...
                CaA./cae*exp((eta-1.0d0)*VA./26.6d0))./(1.0d0+ksat*exp((eta-1.0d0)*VA./26.60d0));

surf(CaA,INCXfun,NaA)


