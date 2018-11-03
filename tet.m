clc
clear all
syms w1 w2 w3  w4  w5  w6   w7 w8 w9 v10 v11  

v14=1.1;
v15=1.3;
v12=.1;
v13=.3;

A=floor(20*rand(3,3));
B=floor(20*rand(3,3));
C=floor(20*rand(3,3));
D=floor(20*rand(3,3));
E=floor(20*rand(3,3));
F=floor(20*rand(3,3));
% v3=1.4;
w3=1;
% w5=4;
% w6=5;
% w7=1;
% w8=2;
% w9=3;


W=[w1 w2 w7;w4 w5 w8;w3 w6 w9];
% V1=[v1 v2 v3;v4 v5 v6;v7 v8 v9];
V1=rand(3,3);
V2=[v10 v11;v12 v13; v14 v15];
H=A*W*B+C;
G=D*W*E+F;

S=solve(H*V2(:,1),H*V2(:,2),G*(V1(:,1)-V1(:,2)),G*(V1(:,1)-V1(:,3)));
 
