clear all; 
format long

numparam = 8;

%b0=[kon;koff;beta;alpha;kd;kr;kdc;krc]
%b0 = [50;160;800;32;85;3.5]; dap5100  
%b0=[0.62;1.59;42.8;395.0;2.33;0.94;0.35;0.81]; %dap501
b0=[1460;.42;1000;0.35;0.15;.81;0.31;0.42];
 %optio0ns=optimset('TolX',1.0e-15,'MaxFunEvals'0,5000,'MaxIter',5000); 

F=@(b)myODE_bak(b);

A   = []                     ; %
b   = []                     ; %
Aeq = []                     ; %
beq = []                     ; %
nlc = []                     ; %
lb = zeros(1,numparam);


ub = ones(1,numparam)*1e20;


%[a,fval] = fminunc(F,a0)

%for i=1:10
    %i
  %  b=fminsearch(F,b0,options)
  [b,fval]=fmincon(F,b0,A, b, Aeq, beq,lb,ub);

    %b0=b;
%end
F1=myODE_bak2(b);

%final parameter values

%[49.98;161.73;800;31.95;85;3.53]
