%In His Name

function MSE_check_s2r1_namotagaren(uM1,uM2,uMr,uD1,uD2,uN_sm)
clc
uM1=3;
uM2=2;
uMr=2;
uD1=2;
uD2=2;

% clear all
close all

ux=1;
uSNR_db=[70];
uN_oi=100000;
uN_it=1;
% uN_sm=100;
% UIE=zeros(uN_it,length(uSNR_db));
 


for uj=1:uN_it
    clear H*
    clear B*
    clear D*
    clear J*
    clear M*
    clear a*
    clear N*
    clear m
    clear j*
    clear R*
    clear v*
    clear oi
    clear A
    clear lb
    clear W*
    clear b*
    clear S*
    clear p*
    clear k*
    clear coun
    clear i
    clear m*
    clear P*
    clear d*
    clear n*
    clear w*
    clear f*
%     uD1=2;
%     uD2=1;
%     Mn=2;
%     uMr=2;
     
 
    
    
    H_1_1= (sqrt(1)*(randn(uM1,uM1)));
    H_1_2= (sqrt(1)*(randn(uM1,uM2)));
    
    H_2_1= (sqrt(1)*(randn(uM2,uM1)));
    H_2_2= (sqrt(1)*(randn(uM2,uM2)));
    
    H_1_r= (sqrt(1)*(randn(uM1,uMr)));
    H_2_r= (sqrt(1)*(randn(uM2,uMr)));
    
    H_r_1= (sqrt(1)*(randn(uMr,uM1)));
    H_r_2= (sqrt(1)*(randn(uMr,uM2)));
     %here the communications distance and transmit power are assumed to be the same across nodes, and hence, are canceled in SIR assessment.
    
   
    for u1=1:length(uSNR_db)
%         IE=zeros(1,uN_oi);
        
        
        SNR=10^(uSNR_db(u1)/10);
        x=ones(uD1,1);
        v_1=trac(uM1,uD1,2);
        v_2=trac(uM2,uD2,2);
        W_r=trac(uMr,uMr,2);
        
        N0=(trace(H_1_1*v_1*x*(x')*v_1'*H_1_1')+trace(H_1_r*W_r*H_r_1*v_1*x*(x')*v_1'*H_r_1'*W_r'*H_1_r'))/( SNR*(1+trace([H_1_r*W_r]*[H_1_r*W_r]')));
        N0_r=N0;
%         [v_1 v_2 W_r]=smst_2( H_1_1, H_1_2, H_2_1, H_2_2, H_1_r, H_2_r ,H_r_1,H_r_2,N0,uD1,uD2,uMn,uMr,uN_sm);
        
        H_1_r_1=H_1_r*W_r*H_r_1;
        H_1_r_2=H_1_r*W_r*H_r_2;
        
        H_2_r_1=H_2_r*W_r*H_r_1;
        H_2_r_2=H_2_r*W_r*H_r_2;
        
        H_p_1_1=H_1_1+H_1_r_1;
        H_p_1_2=H_1_2+H_1_r_2;
        
        H_p_2_1=H_2_1+H_2_r_1;
        H_p_2_2=H_2_2+H_2_r_2;
        
           oi=0;
        while (oi<uN_oi)
            oi=oi+1;
            
            
            
            R_1=v_1'*H_p_1_1'/(H_p_1_1*(v_1)*v_1'*H_p_1_1'+H_p_1_2*(v_2)*v_2'*H_p_1_2'+N0*eye(uM1)+H_1_r*W_r*N0_r*W_r'*H_1_r');
            R_2=v_2'*H_p_2_2'/(H_p_2_1*(v_1)*v_1'*H_p_2_1'+H_p_2_2*(v_2)*v_2'*H_p_2_2'+N0*eye(uM2)+H_2_r*W_r*N0_r*W_r'*H_2_r' );
            
            
            [v_1 v_2]=V_cvx_n(uM1,uM2,uMr,N0,R_1,R_2, H_1_1,H_1_2,H_2_1,H_2_2,H_1_r,H_2_r,H_r_1,H_r_2,uD1,uD2,W_r);
            
            W_r=W_cvx_n(uM1,uM2,uMr,N0,v_1,v_2,R_1,R_2, H_1_1,H_1_2,H_2_1,H_2_2,H_1_r,H_2_r,H_r_1,H_r_2,uD1,uD2,W_r);
            
            uj
            
            H_1_r_1=H_1_r*W_r*H_r_1;
            H_1_r_2=H_1_r*W_r*H_r_2;
            
            H_2_r_1=H_2_r*W_r*H_r_1;
            H_2_r_2=H_2_r*W_r*H_r_2;
            H_p_1_1=H_1_1+H_1_r_1;
            H_p_1_2=H_1_2+H_1_r_2;
            
            H_p_2_1=H_2_1+H_2_r_1;
            H_p_2_2=H_2_2+H_2_r_2;
             ME(oi)  =MSE_2_n(uM1,uM2,uMr,N0,v_1,v_2,R_1,R_2,H_1_1,H_1_2,H_2_1,H_2_2,H_1_r,H_2_r,H_r_1,H_r_2,uD1,uD2,W_r );

%              Q2=R_2*(H_p_2_1*v_1*(v_1')*H_p_2_1')*R_2';
%              Q1=R_1*(H_p_1_2*v_2*(v_2')*H_p_1_2')*R_1';
%             TE(oi)=trace(Q1)+trace(Q2);
%             
%             
%             IA2=H_p_2_1*v_1*[v_1']*H_p_2_1';
%             BI2=abs(svd(IA2));
%             ie2=0;
%             for ik=0:uD2-1
%             ie2=BI2(uMn-ik)+ie2;
%             end
%             Ie2=ie2/trace(IA2);
%              IA1=H_p_1_2*v_2*[v_2']*H_p_1_2';
%             BI1=abs(svd(IA1));
%             ie1=0;
%             for ik=0:uD1-1
%             ie1=BI1(uMn-ik)+ie1;
%             end
%             Ie1=ie1/trace(IA1);
%             IE(oi)=Ie2+Ie1;
%             
%             if(oi>25000)
%                 
%                 if(abs(ME(oi)-ME(oi-1))<0.0001)
%                     oi=101;
%                 end
%             end
            if(mod(oi,20)==0)
                save data_s2r1m2_bar.mat
            end
        end
        
        
%         UIE(uj,u1)=min(IE);
%         UTE(uj,u1)=min(TE);
%         UME(uj,u1)=min(ME);
%         clear IE
%         clear TE
    end
    save data_s2r1m2_bar.mat
end



