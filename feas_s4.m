function y=feas_s4_ne(M,d1,d2,d3,d4,N_r)
y=1;
if (2*(d1*(M-d1)+d2*(M-d2)+d3*(M-d3)+d4*(M-d4))+N_r*M^2<=2*(d1*d2+d1*d3+d1*d4+d2*d3+d2*d4+d3*d4))
    y=0;
end
    