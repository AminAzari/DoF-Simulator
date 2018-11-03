function y=feas_s3_ne(M,d1,d2,d3,N_r,v)
y=1;
if (v*(d1*(M-d1)+d2*(M-d2)+d3*(M-d3))+N_r*M^2<3*(d1+d2+d3-M)*M)
    y=0;
end
    