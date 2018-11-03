function d_t1=feas_check_s3_ne(M,Nr,v)
d_t1=0;
for d1=0:M
    for d2=0:M
        for d3=0:M
            if (feas_s3_ne(M,d1,d2,d3,Nr,v)==1)
                d_t=d1+d2+d3;
                if(d_t>d_t1)
                    d11=d1;
                    d21=d2;
                    d31=d3;
                    d_t1=d_t;
                end
            end
        end
    end
    
end
