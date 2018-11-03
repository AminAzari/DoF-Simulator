%In His Name
uRR=1;
% function MSE_check_s2r2(uMn,uMr,uD1,uD2 ,uN_sm)

while(uRR)
clc
uMn=4;
uMr=4;
uD1=4;
uD2=3;
 
uN_sm=1;
% clear all
close all

ux=1 ;
uSNR_db=[70];
uN_oi=12;
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
    
   
    
    
    
    H_1_1= (sqrt(1)*(randn(uMn,uMn)));
    H_1_2= (sqrt(1)*(randn(uMn,uMn)));
 
    
    H_2_1= (sqrt(1)*(randn(uMn,uMn)));
    H_2_2= (sqrt(1)*(randn(uMn,uMn)));
 
 
    
    H_1_r= (sqrt(1)*(randn(uMn,uMn)));
    H_2_r= (sqrt(1)*(randn(uMn,uMn)));
 
    
    H_r_1= (sqrt(1)*(randn(uMn,uMn)));
    H_r_2= (sqrt(1)*(randn(uMn,uMn)));
 
    H_1_f= (sqrt(1)*(randn(uMn,uMn)));
    H_2_f= (sqrt(1)*(randn(uMn,uMn)));
 
    
    H_f_1= (sqrt(1)*(randn(uMn,uMn)));
    H_f_2= (sqrt(1)*(randn(uMn,uMn)));
 
    
    for u1=1:length(uSNR_db)
        %         IE=zeros(1,uN_oi);
        
        
        SNR=10^(uSNR_db(u1)/10);
        x=ones(uD1,1);
        v_1=trac(uMn,uD1,2);
        v_2=trac(uMn,uD2,2);
      
        W_r=trac(uMn,uMn,2);
        W_f=trac(uMn,uMn,2);
        N0=(trace(H_1_1*v_1*x*(x')*v_1'*H_1_1')+trace(H_1_r*W_r*H_r_1*v_1*x*(x')*v_1'*H_r_1'*W_r'*H_1_r')+trace(H_1_f*W_f*H_f_1*v_1*x*(x')*v_1'*H_f_1'*W_f'*H_1_f'))/( SNR*(1+trace([H_1_r*W_r]*[H_1_r*W_r]')+trace([H_1_f*W_f]*[H_1_f*W_f]')));
        N0_r=N0;
        N0_f=N0;
%         [v_1 v_2 v_3 W_r W_f]=smst_32( H_1_1,H_1_2,H_2_1,H_2_2,H_1_3,H_2_3,H_3_3,H_3_1,H_3_2,H_r_3, H_3_r,H_1_r,H_2_r,H_r_1,H_r_2,H_f_3, H_3_f,H_1_f,H_2_f,H_f_1,H_f_2,N0,uD1,uD2,uD3,uMn,uMr,uN_sm);
        
        H_1_r_1=H_1_r*W_r*H_r_1;
        H_1_r_2=H_1_r*W_r*H_r_2;
 
        
        H_2_r_1=H_2_r*W_r*H_r_1;
        H_2_r_2=H_2_r*W_r*H_r_2;
   
     
        
        H_1_f_1=H_1_f*W_f*H_f_1;
        H_1_f_2=H_1_f*W_f*H_f_2;
   
        
        H_2_f_1=H_2_f*W_f*H_f_1;
        H_2_f_2=H_2_f*W_f*H_f_2;
       
     
        H_p_1_1=H_1_1+H_1_r_1+H_1_f_1 ;
        H_p_1_2=H_1_2+H_1_r_2+H_1_f_2 ;
       
        
        H_p_2_1=H_2_1+H_2_r_1+H_2_f_1 ;
        H_p_2_2=H_2_2+H_2_r_2+H_2_f_2 ;
         
        
       
        
        oi=0;
        while (oi<uN_oi)
            oi=oi+1;
            
            
            R_1=v_1'*H_p_1_1'/(H_p_1_1*(v_1)*v_1'*H_p_1_1'+H_p_1_2*(v_2)*v_2'*H_p_1_2' +N0*eye(uMn)+H_1_r*W_r*N0_r*W_r'*H_1_r'+H_1_f*W_f*N0_f*W_f'*H_1_f' );
            R_2=v_2'*H_p_2_2'/(H_p_2_1*(v_1)*v_1'*H_p_2_1'+H_p_2_2*(v_2)*v_2'*H_p_2_2' +N0*eye(uMn)+H_2_r*W_r*N0_r*W_r'*H_2_r'+H_2_f*W_f*N0_f*W_f'*H_2_f' );
            
            [v_1 v_2 ]=V_cvx_22(uMn,uMr,N0,R_1,R_2 , H_1_1,H_1_2,H_2_1,H_2_2  ,H_1_r,H_2_r,H_r_1,H_r_2 ,H_1_f,H_2_f,H_f_1,H_f_2,uD1,uD2 ,W_r,W_f);
            [W_r W_f]=W_cvx_22(uMn,uMr,N0,v_1,v_2, R_1,R_2,  H_1_1,H_1_2,H_2_1,H_2_2 ,H_1_r,H_2_r,H_r_1,H_r_2 ,H_1_f,H_2_f,H_f_1,H_f_2,uD1,uD2 );
             
            
            
            
            H_1_r_1=H_1_r*W_r*H_r_1;
            H_1_r_2=H_1_r*W_r*H_r_2; 
            
            H_2_r_1=H_2_r*W_r*H_r_1;
            H_2_r_2=H_2_r*W_r*H_r_2; 
          
   
            
            H_1_f_1=H_1_f*W_f*H_f_1;
            H_1_f_2=H_1_f*W_f*H_f_2;
  
            
            H_2_f_1=H_2_f*W_f*H_f_1;
            H_2_f_2=H_2_f*W_f*H_f_2;
            
            
             
            
            H_p_1_1=H_1_1+H_1_r_1+H_1_f_1 ;
            H_p_1_2=H_1_2+H_1_r_2+H_1_f_2 ;
             
            
            H_p_2_1=H_2_1+H_2_r_1+H_2_f_1 ;
            H_p_2_2=H_2_2+H_2_r_2+H_2_f_2 ;
            
            
          
            
            ME(oi)  =MSE_22(uMn,uMr,N0,v_1,v_2,R_1,R_2,H_1_1,H_1_2,H_2_1,H_2_2,H_1_r,H_2_r,H_r_1,H_r_2,H_1_f,H_2_f,H_f_1,H_f_2,uD1,uD2,W_r,W_f );
            if(oi==12)
                if(ME(oi)<1)
                    uRR=0;
                   
                end
            end
            
            
            
            if(mod(oi,2)==0)
                save s2r2.mat
            end
        end
        
        UME(uj,u1)=min(ME);
 
        clear ME
    end
    save  s2r2.mat
end

end


