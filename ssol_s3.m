clc
clear all

syms w1 w2 w3 w4 %w5 w6 w7 w8 w9
% syms f1 f2 f3 f4 f5 f6 f7 f8 f9
% syms g1 g2 g3 g4 g5 g6 g7 g8 g9
% syms v1 v2 v3 v4 v5 v6 v7 v8
V1=rand(2,2);
V2=rand(2,1);
V3=rand(2,1);
% V2(1,1:2)=rand(1,2);
% V2=[V2;v1 v2;v3 v4];
% 
% V3(1,1:2)=rand(1,2);
% V3=[V3;v5 v6;v7 v8];
 
h31=rand(2,2);
h32=rand(2,2);
h21=rand(2,2);
h23=rand(2,2);
h12=rand(2,2);
h13=rand(2,2);

h3r=rand(2,2);
h2r=rand(2,2);
h1r=rand(2,2);

hr1=rand(2,2);
hr2=rand(2,2);
hr3=rand(2,2);

hh31=rand(2,2);
hh32=rand(2,2);
hh21=rand(2,2);
hh23=rand(2,2);
hh12=rand(2,2);
hh13=rand(2,2);

hh3r=rand(2,2);
hh2r=rand(2,2);
hh1r=rand(2,2);

hhr1=rand(2,2);
hhr2=rand(2,2);
hhr3=rand(2,2);

hhh31=rand(2,2);
hhh32=rand(2,2);
hhh21=rand(2,2);
hhh23=rand(2,2);
hhh12=rand(2,2);
hhh13=rand(2,2);

hhh3r=rand(2,2);
hhh2r=rand(2,2);
hhh1r=rand(2,2);

hhhr1=rand(2,2);
hhhr2=rand(2,2);
hhhr3=rand(2,2);

w=[w1 w2 w3; w4 w5 w6;w7 w8 w9];
f=[f1 f2 f3; f4 f5 f6;f7 f8 f9];
g=[g1 g2 g3; g4 g5 g6;g7 g8 g9];

x=h31+h3r*w*hr1+hh3r*f*hhr1+hhh3r*g*hhhr1;
y=h32+h3r*w*hr2+hh3r*f*hhr2+hhh3r*g*hhhr2;
z=h21+h2r*w*hr1+hh2r*f*hhr1+hhh2r*g*hhhr1;
q=h23+h2r*w*hr3+hh2r*f*hhr3+hhh2r*g*hhhr3;
k=h12+h1r*w*hr2+hh1r*f*hhr2+hhh1r*g*hhhr2;
l=h13+h1r*w*hr3+hh1r*f*hhr3+hhh1r*g*hhhr3;


S=solve(x1*x4-x2*x3,k1*k4-k2*k3,l1*l4-l2*l3,z1*z4-z2*z3)


% 
% 
% S = solve(k*V2(:,1),k*V2(:,2),l*V3(:,1),l*V3(:,2),z*(V1(:,1)-V1(:,2)),z*(V1(:,1)-V1(:,3)),...
%     z*V1(:,1)-q*V3(:,1),q*(V3(:,1)-V3(:,2)),x*(V1(:,1)-V1(:,2)),x*(V1(:,1)-V1(:,3)),...
%     y*(V2(:,1)-V2(:,2)),y*V2(:,1)-x*V1(:,1));
% 
% 

