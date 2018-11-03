function   [vv_1 vv_2 vv_3 WW_r WW_f]=smst_32( H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_3_1,H_3_2,H_r_3, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,H_f_3, H_3_f,H_1_f,H_2_f,H_f_1,H_f_2,N0,D1,D2,D3,Mn,Mr,N)
uMn=Mn;
N0_r=N0;
N0_f=N0;

ME=zeros(1,N);
for i=1:N
    v_1=trac(Mn,D1,2);
    v_2=trac(Mn,D2,2);
    v_3=trac(Mn,D3,2);
    W_r=trac(Mr,Mr,2);
    W_f=trac(Mr,Mr,2);
    
    H_1_r_1=H_1_r*W_r*H_r_1;
    H_1_r_2=H_1_r*W_r*H_r_2;
    H_1_r_3=H_1_r*W_r*H_r_3;
    
    H_2_r_1=H_2_r*W_r*H_r_1;
    H_2_r_2=H_2_r*W_r*H_r_2;
    H_2_r_3=H_2_r*W_r*H_r_3;
    
    H_3_r_1=H_3_r*W_r*H_r_1;
    H_3_r_2=H_3_r*W_r*H_r_2;
    H_3_r_3=H_3_r*W_r*H_r_3;
    
    H_1_f_1=H_1_f*W_f*H_f_1;
    H_1_f_2=H_1_f*W_f*H_f_2;
    H_1_f_3=H_1_f*W_f*H_f_3;
    
    H_2_f_1=H_2_f*W_f*H_f_1;
    H_2_f_2=H_2_f*W_f*H_f_2;
    H_2_f_3=H_2_f*W_f*H_f_3;
    
    H_3_f_1=H_3_f*W_f*H_f_1;
    H_3_f_2=H_3_f*W_f*H_f_2;
    H_3_f_3=H_3_f*W_f*H_f_3;
    
    H_p_1_1=H_1_1+H_1_r_1+H_1_f_1 ;
    H_p_1_2=H_1_2+H_1_r_2+H_1_f_2 ;
    H_p_1_3=H_1_3+H_1_r_3+H_1_f_3 ;
    
    H_p_2_1=H_2_1+H_2_r_1+H_2_f_1 ;
    H_p_2_2=H_2_2+H_2_r_2+H_2_f_2 ;
    H_p_2_3=H_2_3+H_2_r_3+H_2_f_3 ;
    
    H_p_3_1=H_3_1+H_3_r_1+H_3_f_1 ;
    H_p_3_2=H_3_2+H_3_r_2+H_3_f_2 ;
    H_p_3_3=H_3_3+H_3_r_3+H_3_f_3 ;
    
    R_1=v_1'*H_p_1_1'/(H_p_1_1*(v_1)*v_1'*H_p_1_1'+H_p_1_2*(v_2)*v_2'*H_p_1_2'+H_p_1_3*(v_3)*v_3'*H_p_1_3'+N0*eye(uMn)+H_1_r*W_r*N0_r*W_r'*H_1_r'+H_1_f*W_f*N0_f*W_f'*H_1_f' );
    R_2=v_2'*H_p_2_2'/(H_p_2_1*(v_1)*v_1'*H_p_2_1'+H_p_2_2*(v_2)*v_2'*H_p_2_2'+H_p_2_3*(v_3)*v_3'*H_p_2_3'+N0*eye(uMn)+H_2_r*W_r*N0_r*W_r'*H_2_r'+H_2_f*W_f*N0_f*W_f'*H_2_f' );
    R_3=v_3'*H_p_3_3'/(H_p_3_1*(v_1)*v_1'*H_p_3_1'+H_p_3_2*(v_2)*v_2'*H_p_3_2'+H_p_3_3*(v_3)*v_3'*H_p_3_3'+N0*eye(uMn)+H_3_r*W_r*N0_r*W_r'*H_3_r'+H_3_f*W_f*N0_f*W_f'*H_3_f' );
    
    ME(i)=MSE_32(Mn,Mr,N0,v_1,v_2,v_3,R_1,R_2,R_3,H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_3_1,H_3_2,H_r_3, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,H_f_3, H_3_f,H_1_f,H_2_f,H_f_1,H_f_2,D1,D2,D3,W_r,W_f );
    if(i==1)
        op=1;
        V_1=v_1;
        V_2=v_2;
        V_3=v_3;
        W_R=W_r;
        W_F=W_f;
    else
        if(ME(i)<ME(op))
            op=i;
            V_1=v_1;
            V_2=v_2;
            V_3=v_3;
            W_R=W_r;
            W_F=W_f;
        end
    end
    
end

vv_1=V_1;
vv_2=V_2;
vv_3=V_3;
WW_r=W_R;
WW_f=W_F;