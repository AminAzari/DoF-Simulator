 function [v_1 v_2 v_3]=V_cvx_32(Mn,Mr,N0,R_1,R_2,R_3, H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_3_1,H_3_2,H_r_3, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,H_f_3, H_3_f,H_1_f,H_2_f,H_f_1,H_f_2,D1,D2,D3,W_r,W_f)
 
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
cvx_begin
        variable v_1(Mn,D1)
        variable v_2(Mn,D2)
        variable v_3(Mn,D3)
         
        minimize( trace( -R_1*H_p_1_1*v_1-v_1'*H_p_1_1'*R_1'+eye(D1,D1))+ ...
                 +trace( -R_2*H_p_2_2*v_2-v_2'*H_p_2_2'*R_2'+eye(D2,D2))+...
                 +trace( -R_3*H_p_3_3*v_3-v_3'*H_p_3_3'*R_3'+eye(D3,D3))+...
                          +trace(R_1*[R_1']* N0)+trace(R_2*R_2'*N0)+trace(R_3*R_3'*N0)+...
                          vec(v_1'*H_p_1_1'*R_1')'*vec(v_1'*H_p_1_1'*R_1')+...
                          vec(v_2'*H_p_1_2'*R_1')'*vec(v_2'*H_p_1_2'*R_1')+...
                          vec(v_3'*H_p_1_3'*R_1')'*vec(v_3'*H_p_1_3'*R_1')+...
                          vec(v_1'*H_p_2_1'*R_2')'*vec(v_1'*H_p_2_1'*R_2')+...
                          vec(v_2'*H_p_2_2'*R_2')'*vec(v_2'*H_p_2_2'*R_2')+...
                          vec(v_3'*H_p_2_3'*R_2')'*vec(v_3'*H_p_2_3'*R_2')+...
                          vec(v_1'*H_p_3_1'*R_3')'*vec(v_1'*H_p_3_1'*R_3')+...
                          vec(v_2'*H_p_3_2'*R_3')'*vec(v_2'*H_p_3_2'*R_3')+...
                          vec(v_3'*H_p_3_3'*R_3')'*vec(v_3'*H_p_3_3'*R_3')+...                          
                          vec(W_r'*H_1_r'*R_1')'*vec(W_r'*H_1_r'*R_1')*N0+...
                          vec(W_r'*H_2_r'*R_2')'*vec(W_r'*H_2_r'*R_2')*N0+...
                          vec(W_r'*H_3_r'*R_3')'*vec(W_r'*H_3_r'*R_3')*N0+...
                          vec(W_f'*H_1_f'*R_1')'*vec(W_f'*H_1_f'*R_1')*N0+...
                          vec(W_f'*H_2_f'*R_2')'*vec(W_f'*H_2_f'*R_2')*N0+...
                          vec(W_f'*H_3_f'*R_3')'*vec(W_f'*H_3_f'*R_3')*N0);
        
        subject to
        vec(v_1)'*vec(v_1) <= 1;
        vec(v_2)'*vec(v_2) <= 1;
        vec(v_3)'*vec(v_3) <= 1;
        cvx_end
        
        