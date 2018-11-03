function d_t1=feas_check_s10(M,Nr)
d_t1=0;
for d1=0:M
    for d2=0:M
        for d3=0:M
            for d4=0:M
                for d5=0:M
                    for d6=0:M
                        for d7=0:M
                            for d8=0:M
                                for d9=0:M
                                    for d10=0:M
                                        if (feas_s10(M,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,Nr)==1)
                                            d_t=d1+d2+d3+d4+d5+d6+d7+d8+d9+d10;
                                            if(d_t>d_t1)
                                                
                                                d_t1=d_t;
                                            end
                                        end
                                    end
                                end
                            end
                            
                        end
                    end
                end
            end
        end
    end
    
end

