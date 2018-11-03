%IHN
load('ham_bar_for0_334.mat')
DD=[D1 D2 D3];
uSNR_db=[70 73];
for il=1:2
    SNR=10^(uSNR_db(il)/10);
    x=ones(D1,1);
    
    N0=(trace(H_1_1*v_1*x*(x')*v_1'*H_1_1')+trace(H_1_r*W_r*H_r_1*v_1*x*(x')*v_1'*H_r_1'*W_r'*H_1_r'))/( SNR*(1+trace([H_1_r*W_r]*[H_1_r*W_r]')));
    N0_r=N0;
    
    
    SR=0;
    for kp=1:3
        for ip=1:D1
            switch(kp)
                case(1)
                    PI=N0*eye(Mn)+trace([H_1_r*W_r]*[H_1_r*W_r]')*N0_r+H_p_1_1*v_1*[v_1']*[H_p_1_1']+H_p_1_2*v_2*[v_2']*[H_p_1_2']+H_p_1_3*v_3*[v_3']*[H_p_1_3']-H_p_1_1*v_1(:,ip)*[v_1(:,ip)']*[H_p_1_1'];
                    ap=R_1(ip,:)*H_p_1_1*v_1(:,ip)*[v_1(:,ip)']*[H_p_1_1']*[R_1(ip,:)'];
                    bp=R_1(ip,:)*PI*[R_1(ip,:)'];
                case(2)
                    PI=N0*eye(Mn)+trace([H_2_r*W_r]*[H_2_r*W_r]')*N0_r+H_p_2_1*v_1*[v_1']*[H_p_2_1']+H_p_2_2*v_2*[v_2']*[H_p_2_2']+H_p_2_3*v_3*[v_3']*[H_p_2_3']-H_p_2_2*v_2(:,ip)*[v_2(:,ip)']*[H_p_2_2'];
                    ap=R_2(ip,:)*H_p_2_2*v_2(:,ip)*[v_2(:,ip)']*[H_p_2_2']*[R_2(ip,:)'];
                    bp=R_2(ip,:)*PI*[R_2(ip,:)'];
                case(3)
                    PI=N0*eye(Mn)+trace([H_3_r*W_r]*[H_3_r*W_r]')*N0_r+H_p_3_1*v_1*[v_1']*[H_p_3_1']+H_p_3_2*v_2*[v_2']*[H_p_3_2']+H_p_3_3*v_3*[v_3']*[H_p_3_3']-H_p_3_3*v_3(:,ip)*[v_3(:,ip)']*[H_p_3_3'];
                    ap=R_3(ip,:)*H_p_3_3*v_3(:,ip)*[v_3(:,ip)']*[H_p_3_3']*[R_3(ip,:)'];
                    bp=R_3(ip,:)*PI*[R_3(ip,:)'];
            end
            SR=SR+log2(1+ap/bp);
        end
    end
    SD(il)=SR;
end

SD