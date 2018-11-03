clear all
clc
syms w1 w2 w3 w4   w5   w6 w7 w8 w9
% w1=1;
% w6=6;
% w8=8;
% w9=9;

%    w6=6;w7=7;w8=8;w9=9;

W=[w1 w2 w3;
    w4 w5 w6;
    w7 w8 w9];
H1=randn(3,3);
H2=randn(3,3);
H3=randn(3,3);
W1=H1+H2*W*H3;

A1=W1(1,1)*W1(2,2)-W1(1,2)*W1(2,1);
A2=W1(1,1)*W1(2,3)-W1(1,3)*W1(2,1);
A3=W1(1,1)*W1(3,3)-W1(1,3)*W1(3,1);
A4=W1(1,1)*W1(3,2)-W1(1,2)*W1(3,1);
A5=W1(1,2)*W1(2,3)-W1(1,3)*W1(2,2);
A6=W1(1,2)*W1(3,3)-W1(1,3)*W1(3,2);
A7=W1(2,1)*W1(3,2)-W1(2,2)*W1(3,1);
A8=W1(2,1)*W1(3,3)-W1(2,3)*W1(3,1);
A9=W1(2,2)*W1(3,3)-W1(2,3)*W1(3,2);

S=solve(A1,A2,A3,A4,A5,A6,A7,A8,A9)
% B1=S.w1;
% B2=S.w2;
% B3=S.w3;
% B4=S.w4;
% 
% 
% S.w1
S.w2
S.w3
S.w4
S.w5
% S.w6
S.w7
% S.w8
% S.w9
% w1=B1(1)
% w2=B2(1)
% w3=B3(1)
% w4=B4(1)




