function d_t1=feas_check_s4(M,Nr)
d_t1=0;
for d1=0:M
    for d2=0:M
        for d3=0:M
            for d4=0:M
                if (feas_s4(M,d1,d2,d3,d4,Nr)==1)
                    d_t=d1+d2+d3+d4;
                    if(d_t>d_t1)
                        
                        d_t1=d_t;
                    end
                end
            end
        end
    end
    
end
