clc
clear all
 

syms w1   w2 w3  w4 v1 v2%w5 w6 % w7 w8  w9% v9 %v13 v14 v15 %v4 v5 v6 v7  v8 v9 v10 v11 v12 v13 v14 v15
% w2=0.3;
% w3=0.4;
% w4=0.9;
w5=0.98;
w6=1.6;
w7=1.2;
w8=1.1;
w9=0.9;
% v15=1+rand(1,1);
% V1_1=rand(2,3);
% V1=[V1_1;rand(1,1) rand(1,1) v9];
% V2_1=rand(1,2);
% V2=[V2_1 ;rand(1,1) v13;v14 v15];
V1=[v1 ;v2;rand(1,1)];
V2=rand(3,1);

 
h21=rand(3,3);

h12=rand(3,3);



h2r=rand(3,3);
h1r=rand(3,3);

hr1=rand(3,3);
hr2=rand(3,3);


w=[w1 w2 w3;w4 w5 w6;w7 w8 w9];


x=h21+h2r*w*hr1;

y=h12+h1r*w*hr2;

x1=x(1,1);
x2=x(1,2);
x3=x(1,3);
x4=x(2,1);
x5=x(2,2);
x6=x(2,3);
x7=x(3,1);
x8=x(3,2);
x9=x(3,3);


S=solve( x*V1,x*V2 )
 


