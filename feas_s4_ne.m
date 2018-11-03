function y=feas_s4_ne(M,d1,d2,d3,d4,N_r,v)
y=1;
if (v*(d1*(M-d1)+d2*(M-d2)+d3*(M-d3)+d4*(M-d4))+N_r*M^2<4*(d1+d2+d3+d4-M)*M)
    y=0;
end
    