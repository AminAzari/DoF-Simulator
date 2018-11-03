%IHN
syms w1 w2 w3 w4
syms v1 v2 v3 v4

W=[w1 w2;w3 w4];
V=[v1 v2;v3 v4];

A1=rand(2,2);
A2=rand(2,2);
A3=rand(2,2);
A4=rand(2,2);
A5=rand(2,2);


B1=rand(2,2);
B2=rand(2,2);
B3=rand(2,2);
B4=rand(2,2);
B5=rand(2,2);

AA=A1+A2*W*A3+A4*V*A5;
BB=B1+B2*W*B3+B4*V*B5;

S=solve(AA,BB);

v1=double(S.v1);
v2=double(S.v2);
v3=double(S.v3);
v4=double(S.v4);
w1=double(S.w1);
w2=double(S.w2);
w3=double(S.w3);
w4=double(S.w4);

W=[w1 w2;w3 w4];
V=[v1 v2;v3 v4];

AA=A1+A2*W*A3+A4*V*A5
BB=B1+B2*W*B3+B4*V*B5


