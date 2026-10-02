%_________________________________________________________________________%
%  Whale Optimization Algorithm (WOA) source codes demo 1.0               %
%                                                                         %
%  Developed in MATLAB R2011b(7.13)                                       %
%                                                                         %
%  Author and programmer: Seyedali Mirjalili                              %
%                                                                         %
%         e-Mail: ali.mirjalili@gmail.com                                 %
%                 seyedali.mirjalili@griffithuni.edu.au                   %
%                                                                         %
%       Homepage: http://www.alimirjalili.com                             %
%                                                                         %
%   Main paper: S. Mirjalili, A. Lewis                                    %
%               The Whale Optimization Algorithm,                         %
%               Advances in Engineering Software , in press,              %
%               DOI: http://dx.doi.org/10.1016/j.advengsoft.2016.01.008   %
%                                                                         %
%_________________________________________________________________________%

% This function containts full information and implementations of the benchmark 
% functions in Table 1, Table 2, and Table 3 in the paper

% lb is the lower bound: lb=[lb_1,lb_2,...,lb_d]
% up is the uppper bound: ub=[ub_1,ub_2,...,ub_d]
% dim is the number of variables (dimension of the problem)

function [lb,ub,dim,fobj] = Get_Functions_details(F)


switch F
    case 'F1'
        fobj = @F1;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F2'
        fobj = @F2;
        lb=-10;
        ub=10;
        dim=30;
        
    case 'F3'
        fobj = @F3;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F4'
        fobj = @F4;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F5'
        fobj = @F5;
        lb=-30;
        ub=30;
        dim=30;
        
    case 'F6'
        fobj = @F6;
        lb=-100;
        ub=100;
        dim=30;
        
    case 'F7'
        fobj = @F7;
        lb=-1.28;
        ub=1.28;
        dim=30;
        
    case 'F8'
        fobj = @F8;
        lb=-500;
        ub=500;
        dim=30;
        
    case 'F9'
        fobj = @F9;
        lb=-5.12;
        ub=5.12;
        dim=30;
        
    case 'F10'
        fobj = @F10;
        lb=-32;
        ub=32;
        dim=30;
        
    case 'F11'
        fobj = @F11;
        lb=-600;
        ub=600;
        dim=30;
        
    case 'F12'
        fobj = @F12;
        lb=-50;
        ub=50;
        dim=30;
        
    case 'F13'
        fobj = @F13;
        lb=-50;
        ub=50;
        dim=30;
        
    case 'F14'
        fobj = @F14;
        lb=-65.536;
        ub=65.536;
        dim=2;
        
    case 'F15'
        fobj = @F15;
        lb=-5;
        ub=5;
        dim=4;
        
    case 'F16'
        fobj = @F16;
        lb=-5;
        ub=5;
        dim=2;
        
    case 'F17'
        fobj = @F17;
        lb=[-5,0];
        ub=[10,15];
        dim=2;
        
    case 'F18'
        fobj = @F18;
        lb=-2;
        ub=2;
        dim=2;
        
    case 'F19'
        fobj = @F19;
        lb=0;
        ub=1;
        dim=3;
        
    case 'F20'
        fobj = @F20;
        lb=0;
        ub=1;
        dim=6;     
        
    case 'F21'
        fobj = @F21;
        lb=0;
        ub=10;
        dim=4;    
        
    case 'F22'
        fobj = @F22;
        lb=0;
        ub=10;
        dim=4;    
        
    case 'F23'
        fobj = @F23;
        lb=0;
        ub=10;
        dim=4;      
    case 'F24'
        fobj = @F24;
        lb=[0.05 0.25 2];
        ub=[2 1.3 15];
        dim=3;
    case 'F25'
        fobj = @F25;
        lb=[0.0625 0.0625 10 10];
        ub=[99*0.0625 99*0.0625 200 200];
        dim=4;
    case 'F26'
        fobj = @F26;    
        lb=[0.1 0.1 0.1 0.1 ];
        ub=[2 10 10 2 ];
        dim=4;
    case 'StringDesign'
        fobj = @StringDesign;
        dim=3;
        lb=[0.05 0.25 2];
        ub=[2 1.3 15];
    case 'ThreeBarTruss'
        fobj = @ThreeBarTruss;
        dim=2;
        lb=[0 0];
        ub=[1 1];
    case 'Concrete'
        fobj = @Concrete;
        dim=7;
        lb=[0.1 0.1 0.1 0.1 0.1 0.1 0.1];
        ub=[0.9 0.9 0.9 0.9 0.9 0.9 0.9];
    case 'F28'
        fobj = @F28;
        dim=10;
        lb=[1 30 2.4 45 2.4 45 1 30 1 30];
        ub=[5 65 3.1 60 3.1 60 5 65 5 65];
        
end
end



% F1

function o = F1(x)
o=sum(x.^2);
end

% F2

function o = F2(x)
o=sum(abs(x))+prod(abs(x));
end

% F3

function o = F3(x)
dim=size(x,2);
o=0;
for i=1:dim
    o=o+sum(x(1:i))^2;
end
end

% F4

function o = F4(x)
o=max(abs(x));
end

% F5

function o = F5(x)
dim=size(x,2);
o=sum(100*(x(2:dim)-(x(1:dim-1).^2)).^2+(x(1:dim-1)-1).^2);
end

% F6

function o = F6(x)
o=sum(abs((x+.5)).^2);
end

% F7

function o = F7(x)
dim=size(x,2);
o=sum([1:dim].*(x.^4))+rand;
end

% F8

function o = F8(x)
o=sum(-x.*sin(sqrt(abs(x))));
end

% F9

function o = F9(x)
dim=size(x,2);
o=sum(x.^2-10*cos(2*pi.*x))+10*dim;
end

% F10

function o = F10(x)
dim=size(x,2);
o=-20*exp(-.2*sqrt(sum(x.^2)/dim))-exp(sum(cos(2*pi.*x))/dim)+20+exp(1);
end

% F11

function o = F11(x)
dim=size(x,2);
o=sum(x.^2)/4000-prod(cos(x./sqrt([1:dim])))+1;
end

% F12

function o = F12(x)
dim=size(x,2);
o=(pi/dim)*(10*((sin(pi*(1+(x(1)+1)/4)))^2)+sum((((x(1:dim-1)+1)./4).^2).*...
(1+10.*((sin(pi.*(1+(x(2:dim)+1)./4)))).^2))+((x(dim)+1)/4)^2)+sum(Ufun(x,10,100,4));
end

% F13

function o = F13(x)
dim=size(x,2);
o=.1*((sin(3*pi*x(1)))^2+sum((x(1:dim-1)-1).^2.*(1+(sin(3.*pi.*x(2:dim))).^2))+...
((x(dim)-1)^2)*(1+(sin(2*pi*x(dim)))^2))+sum(Ufun(x,5,100,4));
end

% F14

function o = F14(x)
aS=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;,...
-32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];

for j=1:25
    bS(j)=sum((x'-aS(:,j)).^6);
end
o=(1/500+sum(1./([1:25]+bS))).^(-1);
end

% F15

function o = F15(x)
aK=[.1957 .1947 .1735 .16 .0844 .0627 .0456 .0342 .0323 .0235 .0246];
bK=[.25 .5 1 2 4 6 8 10 12 14 16];bK=1./bK;
o=sum((aK-((x(1).*(bK.^2+x(2).*bK))./(bK.^2+x(3).*bK+x(4)))).^2);
end

% F16

function o = F16(x)
o=4*(x(1)^2)-2.1*(x(1)^4)+(x(1)^6)/3+x(1)*x(2)-4*(x(2)^2)+4*(x(2)^4);
end

% F17

function o = F17(x)
o=(x(2)-(x(1)^2)*5.1/(4*(pi^2))+5/pi*x(1)-6)^2+10*(1-1/(8*pi))*cos(x(1))+10;
end

% F18

function o = F18(x)
o=(1+(x(1)+x(2)+1)^2*(19-14*x(1)+3*(x(1)^2)-14*x(2)+6*x(1)*x(2)+3*x(2)^2))*...
    (30+(2*x(1)-3*x(2))^2*(18-32*x(1)+12*(x(1)^2)+48*x(2)-36*x(1)*x(2)+27*(x(2)^2)));
end

% F19

function o = F19(x)
aH=[3 10 30;.1 10 35;3 10 30;.1 10 35];cH=[1 1.2 3 3.2];
pH=[.3689 .117 .2673;.4699 .4387 .747;.1091 .8732 .5547;.03815 .5743 .8828];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end

% F20

function o = F20(x)
aH=[10 3 17 3.5 1.7 8;.05 10 17 .1 8 14;3 3.5 1.7 10 17 8;17 8 .05 10 .1 14];
cH=[1 1.2 3 3.2];
pH=[.1312 .1696 .5569 .0124 .8283 .5886;.2329 .4135 .8307 .3736 .1004 .9991;...
.2348 .1415 .3522 .2883 .3047 .6650;.4047 .8828 .8732 .5743 .1091 .0381];
o=0;
for i=1:4
    o=o-cH(i)*exp(-(sum(aH(i,:).*((x-pH(i,:)).^2))));
end
end

% F21

function o = F21(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:5
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

% F22

function o = F22(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:7
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end

% F23

function o = F23(x)
aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

o=0;
for i=1:10
    o=o-((x-aSH(i,:))*(x-aSH(i,:))'+cSH(i))^(-1);
end
end
function o = F24(x) % Tension-Compression Spring
u1=x(1);
u2=x(2);
u3=x(3);
nonlinear_cons1 = 1-((u2^3*u3)/(71785*u1^4));
nonlinear_cons2 = (4*u2^2-u1*u2)/(12566*(u2*u1^3-u1^4))+(1/5108*u1^2)-1;
nonlinear_cons3 = 1-(140.45*u1)/(u2^2*u3);
nonlinear_cons4 = ((u1+u2)/1.5)-1;

if nonlinear_cons1>0
    penalty1=10^9;
else
    penalty1=0;
end
if nonlinear_cons2>0
    penalty2=10^9;
else
    penalty2=0;
end
if nonlinear_cons3>0
    penalty3=10^9;
else
    penalty3=0;
end
if nonlinear_cons4>0
    penalty4=10^9;
else
    penalty4=0;
end

o = ((u3+2)*u2*u1^2)+penalty1+penalty2+penalty3+penalty4;


end
function out=StringDesign(x)

y1=x(:,1);%W
y2=x(:,2);%d
y3=x(:,3);%N
%%% opt
fx=(y3+2).*y2.*y1.^2;
%%% const
g(:,1)=1-(y2.^3.*y3)./(71785.*y1.^4);
g(:,2)=(4.*y2.^2-y1.*y2)./...
    (12566.*(y2.*y1.^3-y1.^4))...
    +(1./(5108.*y1.^2))-1;
g(:,3)=1-(140.45.*y1./(y2.^2.*y3));
g(:,4)=(y1+y2)./1.5-1;
%%% Penalty
pp=10^9;
for i=1:size(g,1)
    for j=1:size(g,2)
        if g(i,j)>0
            penalty(i,j)=pp.*g(i,j);
        else
            penalty(i,j)=0;
        end
    end
end

out=fx+sum(penalty,2);

end

function o=F25(x)

y1=x(:,1);%Ts
y2=x(:,2);%Th
y3=x(:,3);%R
y4=x(:,4);%L
%%% opt
fx=0.6224.*y1.*y3.*y4+...
    1.7781.*y2.*y3.^2+...
    3.1661.*y1.^2.*y4+...
    19.84.*y1.^2.*y3;
%%% const
g(:,1)=-y1+0.0193.*y3;
g(:,2)=-y2+0.0095.*y3;
g(:,3)=-pi.*y3.^2.*y4...
    -(4/3).*pi.*y3.^3 ...
    +1296000;
g(:,4)=y4-240;

%%% Penalty
pp=10^9;
for i=1:size(g,1)
    for j=1:size(g,2)
        if g(i,j)>0
            penalty(i,j)=pp.*g(i,j);
        else
            penalty(i,j)=0;
        end
    end
end

o=fx+sum(penalty,2);


end

function o=F26(x)
y1=x(:,1);%W
y2=x(:,2);%L
y3=x(:,3);%d
y4=x(:,4);%h
%%% opt
fx=(y2.*1.1047.*y1.^2)+(0.04811.*y3.*y4.*(14+y2));
%%% const
sigm=504000./(y4.*y3.^2);
q=6000*(14+(y2./2));
D=0.5.*((y2.^2)+(y1+y3).^2).^0.5;
j=2*sqrt(2).*y1.*y2.*((y2.^2./6)+((y1+y3).^2)./2);
delta=65856./(30000.*y4.*y3.^3);
beta=(q.*D)./j;
alfa=6000./(sqrt(2).*y1.*y2);
toa=(alfa.^2+beta.^2+(alfa.*beta.*y2)./D).^0.5;
p=(0.61423*10^6).*((y3.*y4.^3)./6).*(1-(y3.*sqrt(y4.^6.*30/48))./28);

g(:,1)=toa-13600;
g(:,2)=sigm-30000;
g(:,3)=y1-y4;
g(:,4)=(0.1047.*y1.^2.*y2)+(0.04811.*y4.*y3.*(14+y2))-5;
g(:,5)=0.125-y1;
g(:,6)=delta-0.25;
g(:,7)=6000-p;
pp=10^9;
for i=1:size(g,1)
    for j=1:size(g,2)
        if g(i,j)>0
            penalty(i,j)=pp.*g(i,j);
        else
            penalty(i,j)=0;
        end
    end
end

o=fx+sum(penalty,2);

end

function o=ThreeBarTruss(x)

A1=x(:,1);
A2=x(:,2);
%%%opt
fx=(2*sqrt(2).*A1+A2).*100;
%%% const
g(:,1)=2.*(sqrt(2).*A1+A2)./...
    (sqrt(2).*A1.^2+2.*A1.*A2)-2;
g(:,2)=2.*A2./(sqrt(2).*A1.^2+...
    2.*A1.*A2)-2;
g(:,3)=2./(A1+sqrt(2).*A2)-2;
%%% Penalty
pp=10^9;
for i=1:size(g,1)
    for j=1:size(g,2)
        if g(i,j)>0
            penalty(i,j)=pp.*g(i,j);
        else
            penalty(i,j)=0;
        end
    end
end

o=fx+sum(penalty,2);
end
function o=Ufun(x,a,k,m)
o=k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
end
function o=Concrete(x)

y1=x(:,1);%Cement
y2=x(:,2);%BlastFurnaceSlag
y3=x(:,3);%y3sh
y4=x(:,4);%Water
y5=x(:,5);%Superplasticizer
y6=x(:,6);%CoarseAggregate
y7=x(:,7);%FineAggregate
%%% opt
fx =-21.33 + 36.54*y1 + 93.60*y2 - 12.03 *y3 + 62.26 *y4 - 6.567 *y5 + 44.12 *y6...
- 9.27 *y7 - 53.53 *y1^2 - 225.4 *y2^2 + 35.43 *y3^2 - 129.24 *y4^2 + 10.13 *y5^2....
- 82.69 *y6^2 - 1.09 *y7^2 + 25.03* y1^3 + 150.36 *y2^3 - 27.99* y3^3 + 76.54* y4^3....
- 5.279 *y5^3 + 44.63 *y6^3 + 4.72* y7^3;

fx_flexrual= (((fx-0.1)/0.8)*(25.96566616-24.046164976))+24.046164976;
Cement= (((y1-0.1)/0.8)*(322-122.6))+122.6;
BlastFurnaceSlag= (((y2-0.1)/0.8)*(183.9-0))+0;
FlyAsh= (((y3-0.1)/0.8)*(194-0))+0;
Water= (((y4-0.1)/0.8)*(228-121.75))+121.75;
Superplasticizer= (((y5-0.1)/0.8)*(9.88-0))+0;
CoarseAggregate= (((y6-0.1)/0.8)*(1091.4-845))+845;
FineAggregate= (((y7-0.1)/0.8)*(905.9-612))+612;


cost=Cement*0.11+BlastFurnaceSlag*0.06+FlyAsh*0.055+Water*0.00024+Superplasticizer*2.94+CoarseAggregate*0.01+FineAggregate*0.006;
cost_scaled = 0.1+0.8*((cost-38.95144)/(72.92472-38.95144));
Volume=Cement/3150+BlastFurnaceSlag/2800+FlyAsh/2500+Water/1000+Superplasticizer/1350+CoarseAggregate/2500+FineAggregate/2650;
fitness=0.5*(fx-0.9)^2+0.5*(cost_scaled-0.1)^2;
%%% const
ratio=Water/Cement;
Penalty=0;
Penalty1=0;
if (ratio>0.55)
Penalty=100;
else
    Penalty=0;
end
if (Volume<1)
    Penalty1=100;
else
    Penalty1=0;
end
%%% Penalty


o=fitness+Penalty+Penalty1;
% out=fitness;
end

function o=F28(x)
y1=x(:,1);%1
y2=x(:,2);%2
y3=x(:,3);%3
y4=x(:,4);%4
y5=x(:,5);%5
y6=x(:,6);%6
y7=x(:,7);%7
y8=x(:,8);%8
y9=x(:,9);%9
y10=x(:,10);%10
%%% other parameters
L = 500; %Total beam length cm
l = 100; %Length of the individual section cm
P = 50000; %Load N
delta = 2.7; % maximum deflection of beam cm
sigma = 14000; % allowable stress in each section N/cm2
E = 20000000; %youngs modulus N/cm2
%%% opt
fx=l.*(y1.*y2+y3.*y4+y5.*y6+y7.*y8+y9.*y10);
%%%% const
g(:,1)=(6*P*l)./(y9.*y10.^2)-sigma;
g(:,2)=(6*P*2*l)./(y7.*y8.^2)-sigma;
g(:,3)=(6*P*3*l)./(y5.*y6.^2)-sigma;
g(:,4)=(6*P*4*l)./(y3.*y4.^2)-sigma;
g(:,5)=(6*P*5*l)./(y1.*y2.^2)-sigma;
g(:,6)=((P*l^3)/E)*((244/(y1.*y2.^3))+(148./(y3.*y4.^3))+(76./(y5.*y6.^3))+(28./(y7.*y8.^3))+(4./(y9.*y10.^3)))-delta;
g(:,7)=(y2./y1)-20;
g(:,8)=(y4./y3)-20;
g(:,9)=(y6./y5)-20;
g(:,10)=(y8./y7)-20;
g(:,11)=(y10./y9)-20;

%%% Penalty
pp=10^9;
for i=1:size(g,1)
    for j=1:size(g,2)
        if g(i,j)>0
            penalty(i,j)=pp.*g(i,j);
        else
            penalty(i,j)=0;
        end
    end
end

o=fx+sum(penalty,2);

end