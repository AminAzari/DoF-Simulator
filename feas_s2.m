function y=feas_s2(M,d1,d2,N_r)
y=1;
if (2*(d1*(M-d1)+d2*(M-d2))+N_r*M^2<2*d1*d2)
    y=0;
end
    