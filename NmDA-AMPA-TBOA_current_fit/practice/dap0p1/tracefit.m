clear all; 
format long

numparam = 6;

%b0=[kon;koff;beta;alpha;kd;kr]
%b0=[50;160;800;32;85;3.5]
b0 = [400;139;300;42;75;3.5];%[600;151;400;24;57;2.8]; %[600;150;200;18;14;0.9]; % [5.786426718876288;9.832677412014878;46.707193686023665;21.279592181027610;2.199085752844222;1.086865823071328];%ones(1,numparam)*10;
    
%600.0e2;1.0;0.144644277285496e-3*200];  


 %options=optimset('TolX',1.0e-15,'MaxFunEvals',5000,'MaxIter',5000); 

F=@(b)myODE_bak(b);

A   = []                     ; %
b   = []                     ; %
Aeq = []                     ; %
beq = []                     ; %
nlc = []                     ; %
lb =zeros(1,numparam);


ub = ones(1,numparam)*1e20;


%[b,fval] = fminunc(F,b0)

%for i=1:10
    %i
  %  b=fminsearch(F,b0,options)
  [b,fval]=fmincon(F,b0,A, b, Aeq, beq,lb,ub);

    %b0=b;
%end
F1=myODE_bak2(b);

%final parameter values

%[49.98;161.73;800;31.95;85;3.53]
