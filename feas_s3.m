function y=feas_s3(M,d1,d2,d3,N_r)
y=1;
if (2*(d1*(M-d1)+d2*(M-d2)+d3*(M-d3))+N_r*M^2<2*(d1*d2+d1*d3+d2*d3))
    y=0;
end
    