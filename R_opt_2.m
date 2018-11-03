function [R_1 R_2]= R_opt_2(Mn,Mr,N0,v_1,v_2, H_1_1,H_1_2,H_2_1,H_2_2,H_1_r,H_2_r,H_r_1,H_r_2,D1,D2,W_r)

cvx_begin
variable R_1(D1,Mn)
variable R_2(D2,Mn)

  H_1_r_1=H_1_r*W_r*H_r_1;
    H_1_r_2=H_1_r*W_r*H_r_2;
    
    H_2_r_1=H_2_r*W_r*H_r_1;
    H_2_r_2=H_2_r*W_r*H_r_2;
    
    H_p_1_1=H_1_1+H_1_r_1;
    H_p_1_2=H_1_2+H_1_r_2;
    
    H_p_2_1=H_2_1+H_2_r_1;
    H_p_2_2=H_2_2+H_2_r_2;


minimize( (vec(R_1*H_p_1_2*v_2)'*vec(R_1*H_p_1_2*v_2))/D2+...
          (vec(R_2*H_p_2_1*v_1)'*vec(R_2*H_p_2_1*v_1))/D1+...
          trace( -R_1*H_p_1_1*v_1-v_1'*H_p_1_1'*R_1'+eye(D1,D1)+ ...
    -R_2*H_p_2_2*v_2-v_2'*H_p_2_2'*R_2'+eye(D2,D2))+...
    vec(R_1')'*vec(R_1')*N0+vec(R_2')'*vec(R_2')*N0+...
    vec(v_1'*H_p_1_1'*R_1')'*vec(v_1'*H_p_1_1'*R_1')+...
    vec(v_2'*H_p_1_2'*R_1')'*vec(v_2'*H_p_1_2'*R_1')+...
    vec(v_1'*H_p_2_1'*R_2')'*vec(v_1'*H_p_2_1'*R_2')+...
    vec(v_2'*H_p_2_2'*R_2')'*vec(v_2'*H_p_2_2'*R_2')+...
    vec(W_r'*H_1_r'*R_1')'*vec(W_r'*H_1_r'*R_1')*N0+...
    vec(W_r'*H_2_r'*R_2')'*vec(W_r'*H_2_r'*R_2')*N0)
          
 
        subject to
        vec(R_1)'*vec(R_1) <= 1;
        vec(R_2)'*vec(R_2) <= 1;
cvx_end

