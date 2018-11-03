function y=feas_s2_ne(M,d1,d2,N_r,v)
y=1;
if (v*(d1*(M-d1)+d2*(M-d2))+N_r*M^2<2*M*(d1+d2-M))
    y=0;
end
    