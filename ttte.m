syms y1 y2 
y3=0.2; 
y4=0.7;
y5=1.1;
y6=1.3;
y7=1.5;
y8=1.7;
y9=1.15;

Y=[y1-l y2 y3;y4 y5-l y6;y7 y8 y9-l];
det(Y)
 
 
S=solve(-y1*y5 +y2*y4 - y1*y9 + y3*y7 - y5*y9 + y6*y8,...
y1*y5*y9 - y1*y6*y8 - y2*y4*y9 + y2*y6*y7 + y3*y4*y8 - y3*y5*y7)
 