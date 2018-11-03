clc
clear all
 
    syms w1 w2 w3 w4  v5 v6 v7  v8 v1  
%     v1=1;
    v2=1.1;
    v3=1.4;
    v4=0.9;
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
    
    w=[w1 w2;w3 w4];
    
    x=h31+h3r*w*hr1;
    y=h32+h3r*w*hr2;
    z=h21+h2r*w*hr1;
    q=h23+h2r*w*hr3;
    k=h12+h1r*w*hr2;
    l=h13+h1r*w*hr3;
    
    x1=x(1,1);
    x2=x(1,2);
    x3=x(2,1);
    x4=x(2,2);
    y1=y(1,1);
    y2=y(1,2);
    y3=y(2,1);
    y4=y(2,2);
    z1=z(1,1);
    z2=z(1,2);
    z3=z(2,1);
    z4=z(2,2);
    q1=q(1,1);
    q2=q(1,2);
    q3=q(2,1);
    q4=q(2,2);
    k1=k(1,1);
    k2=k(1,2);
    k3=k(2,1);
    k4=k(2,2);
    l1=l(1,1);
    l2=l(1,2);
    l3=l(2,1);
    l4=l(2,2);
    
    
    
    S = solve(x1*x4-x2*x3,x1*(v1-v3)+x2*(v2-v4),x1*v1+x2*v2-y1*v5-y2*v6,...
        x3*v1+x4*v2-y3*v5-y4*v6,z1*z4-z2*z3,z1*(v1-v3)+z2*(v2-v4),...
        z1*v1+z2*v2-q1*v7-q2*v8,z3*v1+z4*v2-q3*v7-q4*v8,...
        l1*v7+l2*v8);
    
     
 


