function   [vv_1 vv_2 WW_r fail]=smst_2( H_1_1, H_1_2, H_2_1, H_2_2, H_1_r, H_2_r ,H_r_1,H_r_2,N0,D1,D2,Mn,Mr,N)
fail=0;
ME=zeros(1,N);
J=1;
co=0;
while(J)
    co=co+1;
    if(co==10)
        J=0;
        fail=1;
    end
    for i=1:N
        v_1=trac(Mn,D1,2);
        v_2=trac(Mn,D2,2);
        W_r=trac(Mr,Mr,2);
        
        
        H_1_r_1=H_1_r*W_r*H_r_1;
        H_1_r_2=H_1_r*W_r*H_r_2;
        
        H_2_r_1=H_2_r*W_r*H_r_1;
        H_2_r_2=H_2_r*W_r*H_r_2;
        
        H_p_1_1=H_1_1+H_1_r_1;
        H_p_1_2=H_1_2+H_1_r_2;
        
        H_p_2_1=H_2_1+H_2_r_1;
        H_p_2_2=H_2_2+H_2_r_2;
        R_1=v_1'*H_p_1_1'/(H_p_1_1*(v_1)*v_1'*H_p_1_1'+H_p_1_2*(v_2)*v_2'*H_p_1_2'+N0*eye(Mn)+H_1_r*W_r*N0*W_r'*H_1_r');
        R_2=v_2'*H_p_2_2'/(H_p_2_1*(v_1)*v_1'*H_p_2_1'+H_p_2_2*(v_2)*v_2'*H_p_2_2'+N0*eye(Mn)+H_2_r*W_r*N0*W_r'*H_2_r' );
        
        
        
        
        ME(i)  =MSE_2(Mn,Mr,N0,v_1,v_2,R_1,R_2,H_1_1,H_1_2,H_2_1,H_2_2,H_1_r,H_2_r,H_r_1,H_r_2,D1,D2,W_r );
        if(i==1)
            op=1;
            V_1=v_1;
            V_2=v_2;
            W_R=W_r;
        else
            if(ME(i)<ME(op))
                op=i;
                V_1=v_1;
                V_2=v_2;
                W_R=W_r;
            end
        end
        
    end
    if(N0>0.052)
        if(ME(op)<0.95)
            J=0;
        end
    else
        if(ME(op)<0.62)
            J=0;
        end
    end
end
vv_1=V_1;
vv_2=V_2;
WW_r=W_R;