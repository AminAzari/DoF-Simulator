function W_r=W_cvx_n(M1,M2,Mr,N0,v_1,v_2,R_1,R_2, H_1_1,H_1_2,H_2_1,H_2_2,H_1_r,H_2_r,H_r_1,H_r_2,D1,D2,W_r)
 
 



cvx_begin
        
        variable W_r(Mr,Mr)
         
 
        
 
          H_1_r_1=H_1_r*W_r*H_r_1;
    H_1_r_2=H_1_r*W_r*H_r_2;
    
    H_2_r_1=H_2_r*W_r*H_r_1;
    H_2_r_2=H_2_r*W_r*H_r_2;
    
    H_p_1_1=H_1_1+H_1_r_1;
    H_p_1_2=H_1_2+H_1_r_2;
    
    H_p_2_1=H_2_1+H_2_r_1;
    H_p_2_2=H_2_2+H_2_r_2;
    
                      
minimize( trace( -R_1*H_p_1_1*v_1-v_1'*H_p_1_1'*R_1'+eye(D1,D1))+ ...
    +trace(-R_2*H_p_2_2*v_2-v_2'*H_p_2_2'*R_2'+eye(D2,D2))+...
    vec(R_1')'*vec(R_1')*N0+vec(R_2')'*vec(R_2')*N0+...
    vec(v_1'*H_p_1_1'*R_1')'*vec(v_1'*H_p_1_1'*R_1')+...
    vec(v_2'*H_p_1_2'*R_1')'*vec(v_2'*H_p_1_2'*R_1')+...
    vec(v_1'*H_p_2_1'*R_2')'*vec(v_1'*H_p_2_1'*R_2')+...
    vec(v_2'*H_p_2_2'*R_2')'*vec(v_2'*H_p_2_2'*R_2')+...
    vec(W_r'*H_1_r'*R_1')'*vec(W_r'*H_1_r'*R_1')*N0+...
    vec(W_r'*H_2_r'*R_2')'*vec(W_r'*H_2_r'*R_2')*N0);             
                      
                      
                      
        
        subject to
        vec(W_r)'*vec(W_r) <= 1;

        
        cvx_end
        
        