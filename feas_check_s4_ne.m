function d_t1=feas_check_s4_ne(M,Nr,v)
d_t1=0;
for d1=0:M
    for d2=0:M
        for d3=0:M
            for d4=0:M
                if (feas_s4_ne(M,d1,d2,d3,d4,Nr,v)==1)
                    d_t=d1+d2+d3+d4;
                    if(d_t>d_t1)
                        
                        d_t1=d_t;
                    end
                end
            end
        end
    end
    
end
