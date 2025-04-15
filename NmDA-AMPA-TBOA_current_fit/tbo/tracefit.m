clear all; 
format long

numparam = 7;

%b0=[Rb;Rmu1;Rmu2;Rd;Rr;Ro;Rc]
%b0 = [50;160;800;32;85;3.5;0.01]; %nmdar 
b0=[22;0.989;0.01;48.99;7;700;0.001];
%b0=[13;5.9;86000;900;64;2700;200];

 %options=optimset('TolX',1.0e-15,'MaxFunEvals',5000,'MaxIter',5000); 

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
