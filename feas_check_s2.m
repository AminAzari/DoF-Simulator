function d_t1=feas_check_s2(M,Nr)
d_t1=0;
for d1=0:M
    for d2=0:M
        if (feas_s2(M,d1,d2,Nr)==1)
            d_t=d1+d2;
            if(d_t>d_t1)
                d11=d1;
                d21=d2;
                d_t1=d_t;
            end
        end
    end
    
end
