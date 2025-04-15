clear all; 
format long

numparam = 6;

%b0=[kon;koff;beta;alpha;kd;kr]
b0 = [500;120;496;10.5;85;2.01;324;0.0356;0.00011];

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
