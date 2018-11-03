%In His Name

function MSE_check_s3r0(uMn,uMr,uD1,uD2,uD3,uN_sm)
clc

% clear all
close all

uMn=6;
uMr=6;
uD1=5;
uD2=4;
uD3=4;


ux=1 ;
uSNR_db=[70];
uN_oi=100000;
uN_it=1;
% uN_sm=1000;

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
    
%     uD1=3;
%     uD2=3;
%     uD3=4;
%     
%     uMn=5;
%     uMr=5;
 
    
     %here the communications distance and transmit power are assumed to be the same across nodes, and hence, are canceled in SIR assessment.
    H_1_1= (sqrt(1)*(randn(uMn,uMn)));
    H_1_2= randn(uMn,4)*randn(4,uMn);
    H_1_3= randn(uMn,4)*randn(4,uMn);
    
    H_2_1= randn(uMn,4)*randn(4,uMn);
    H_2_2= (sqrt(1)*(randn(uMn,uMn)));
    H_2_3= randn(uMn,4)*randn(4,uMn);
    
    H_3_1= randn(uMn,4)*randn(4,uMn);
    H_3_2= randn(uMn,4)*randn(4,uMn);
    H_3_3= (sqrt(1)*(randn(uMn,uMn)));
    
    H_1_r= zeros(uMn,uMn);
    H_2_r= zeros(uMn,uMn);
    H_3_r= zeros(uMn,uMn);
    
    H_r_1= zeros(uMn,uMn);
    H_r_2= zeros(uMn,uMn);
    H_r_3= zeros(uMn,uMn);
     
    
    for u1=1:length(uSNR_db)
%         IE=zeros(1,uN_oi);
 
        
        SNR=10^(uSNR_db(u1)/10);
        x=ones(uD1,1);
        v_1=trac(uMn,uD1,2);
        v_2=trac(uMn,uD2,2);
        v_3=trac(uMn,uD3,2);
        W_r=zeros(uMn,uMn);
        N0=(trace(H_1_1*v_1*x*(x')*v_1'*H_1_1')+trace(H_1_r*W_r*H_r_1*v_1*x*(x')*v_1'*H_r_1'*W_r'*H_1_r'))/( SNR*(1+trace([H_1_r*W_r]*[H_1_r*W_r]')));
        N0_r=N0;
%         [v_1 v_2 v_3 W_r]=smst_3( H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_r_3,H_3_1,H_3_2, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,N0,uD1,uD2,uD3,uMn,uMr,uN_sm);
        
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
        
         oi=0;
%          load('J:\!MSE project\docs\Final results_MSE\Final results_MSE\test_naghz.mat')
        while (oi<uN_oi)
            oi=oi+1;
            
            
            R_1=v_1'*H_p_1_1'/(H_p_1_1*(v_1)*v_1'*H_p_1_1'+H_p_1_2*(v_2)*v_2'*H_p_1_2'+H_p_1_3*(v_3)*v_3'*H_p_1_3'+N0*eye(uMn)+H_1_r*W_r*N0_r*W_r'*H_1_r' );
            R_2=v_2'*H_p_2_2'/(H_p_2_1*(v_1)*v_1'*H_p_2_1'+H_p_2_2*(v_2)*v_2'*H_p_2_2'+H_p_2_3*(v_3)*v_3'*H_p_2_3'+N0*eye(uMn)+H_2_r*W_r*N0_r*W_r'*H_2_r' );
            R_3=v_3'*H_p_3_3'/(H_p_3_1*(v_1)*v_1'*H_p_3_1'+H_p_3_2*(v_2)*v_2'*H_p_3_2'+H_p_3_3*(v_3)*v_3'*H_p_3_3'+N0*eye(uMn)+H_3_r*W_r*N0_r*W_r'*H_3_r' );
            
            [v_1 v_2 v_3]=V_cvx_3(uMn,uMr,N0,R_1,R_2,R_3, H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_r_3,H_3_1,H_3_2, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,uD1,uD2,uD3,W_r);
%             W_r=W_cvx_3(uMn,uMr,N0,v_1,v_2,v_3,R_1,R_2,R_3, H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_r_3,H_3_1,H_3_2, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,uD1,uD2,uD3);
%             uj
            
            
            
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
            
             ME(oi)  =MSE_3(uMn,uMr,N0,v_1,v_2,v_3,R_1,R_2,R_3,H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_r_3,H_3_1,H_3_2, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,uD1,uD2,uD3,W_r );
             ME(end)
   
            
%             
%             IA3=H_p_3_1*v_1*[v_1']*H_p_2_1'+H_p_3_2*v_2*[v_2']*H_p_3_2';
%             BI3=svd(IA3);
%             ie3=0;
%             for ik=0:uD3-1
%                 ie3=BI3(uMn-ik)+ie3;
%             end
%             Ie3=ie3/trace(IA3);
%              
%             
%             IA2=H_p_2_1*v_1*[v_1']*H_p_2_1'+H_p_2_3*v_3*[v_3']*H_p_2_3';
%             BI2=svd(IA2);
%             ie2=0;
%             for ik=0:uD2-1
%                 ie2=BI2(uMn-ik)+ie2;
%             end
%             Ie2=ie2/trace(IA2);
%             Q2=R_2*(H_p_2_1*v_1*(v_1')*H_p_2_1+H_p_2_3*v_3*(v_3')*H_p_2_3)*R_2';
%             Q1=R_1*(H_p_1_2*v_2*(v_2')*H_p_1_2+H_p_1_3*v_3*(v_3')*H_p_1_3)*R_1';
%             Q3=R_3*(H_p_3_2*v_2*(v_2')*H_p_3_2+H_p_3_1*v_1*(v_1')*H_p_3_1)*R_3';
%             TE(oi)=trace(Q1)+trace(Q2)+trace(Q3);
%             
%             IA1=H_p_1_2*v_2*[v_2']*H_p_1_2'+H_p_1_3*v_3*[v_3']*H_p_1_3';
%             BI1=svd(IA1);
%             ie1=0;
%             for ik=0:uD1-1
%                 ie1=BI1(uMn-ik)+ie1;
%             end
%             Ie1=ie1/trace(IA1);
%             
%             IE(oi)=Ie1+Ie2+Ie3;
%             if(oi>25)
%                 
%                 if(abs(ME(oi)-ME(oi-1))<0.0001)
%                     oi=101;
%                 end
%             end
if(mod(oi,20)==0)
    save ham_bar_for0_334.mat
end
        end
%         UIE(uj,u1)=min(IE);
%           UTE(uj,u1)=min(TE);
%             UME(uj,u1)=min(ME);
        clear IE
        clear TE
        clear ME
    end
    save data_s3r1m5_334.mat 
end



