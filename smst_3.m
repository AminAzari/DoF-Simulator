function   [vv_1 vv_2 vv_3 WW_r]=smst_3( H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_r_3,H_3_1,H_3_2, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,N0,D1,D2,D3,Mn,Mr,N)

ME=zeros(1,N);
for i=1:N
    v_1=trac(Mn,D1,2);
    v_2=trac(Mn,D2,2);
    v_3=trac(Mn,D3,2);
    W_r=trac(Mr,Mr,2);
    
    
H_1_r_1=H_1_r*W_r*H_r_1;
    H_1_r_2=H_1_r*W_r*H_r_2;
    H_1_r_3=H_1_r*W_r*H_r_3;
    
    H_2_r_1=H_2_r*W_r*H_r_1;
    H_2_r_2=H_2_r*W_r*H_r_2;
    H_2_r_3=H_2_r*W_r*H_r_3;
 
    H_3_r_1=H_3_r*W_r*H_r_1;
    H_3_r_2=H_3_r*W_r*H_r_2;
    H_3_r_3=H_3_r*W_r*H_r_3;
    
    H_p_1_1=H_1_1+H_1_r_1 ;
    H_p_1_2=H_1_2+H_1_r_2 ;
    H_p_1_3=H_1_3+H_1_r_3 ;
    
    H_p_2_1=H_2_1+H_2_r_1 ;
    H_p_2_2=H_2_2+H_2_r_2 ;
    H_p_2_3=H_2_3+H_2_r_3 ;
    
    H_p_3_1=H_3_1+H_3_r_1 ;
    H_p_3_2=H_3_2+H_3_r_2 ;
    H_p_3_3=H_3_3+H_3_r_3 ;
    
    R_1=v_1'*H_p_1_1'/(H_p_1_1*(v_1)*v_1'*H_p_1_1'+H_p_1_2*(v_2)*v_2'*H_p_1_2'+H_p_1_3*(v_3)*v_3'*H_p_1_3'+N0*eye(Mn)+H_1_r*W_r*N0*W_r'*H_1_r' );
    R_2=v_2'*H_p_2_2'/(H_p_2_1*(v_1)*v_1'*H_p_2_1'+H_p_2_2*(v_2)*v_2'*H_p_2_2'+H_p_2_3*(v_3)*v_3'*H_p_2_3'+N0*eye(Mn)+H_2_r*W_r*N0*W_r'*H_2_r' );
    R_3=v_3'*H_p_3_3'/(H_p_3_1*(v_1)*v_1'*H_p_3_1'+H_p_3_2*(v_2)*v_2'*H_p_3_2'+H_p_3_3*(v_3)*v_3'*H_p_3_3'+N0*eye(Mn)+H_3_r*W_r*N0*W_r'*H_3_r' );
    
    
     ME(i)  =MSE_3(Mn,Mr,N0,v_1,v_2,v_3,R_1,R_2,R_3,H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_r_3,H_3_1,H_3_2, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,D1,D2,D3,W_r );
    if(i==1)
        op=1;
        V_1=v_1;
        V_2=v_2;
        V_3=v_3;
        W_R=W_r;
    else
        if(ME(i)<ME(op))
            op=i;
            V_1=v_1;
            V_2=v_2;
            V_3=v_3;
            W_R=W_r;
        end
    end
    
end

vv_1=V_1;
vv_2=V_2;
vv_3=V_3;
WW_r=W_R;