%IHN
clc
clear all
close all
% % %  
% % % M_data=[1:100];
% % %  
% % % K=2;
% % % N=1;
% % % for M=M_data
% % %     d_s2r1(M)=feas_check_s2(M,N);
% % % end
% % % 
% % % 
% % % 
% % % 
% % % K=2;
% % % N=2;
% % % for M=M_data
% % %     d_s2r2(M)=feas_check_s2(M,N);
% % % end
% % % 
% % % 
% % % K=2;
% % % N=3;
% % % for M=M_data
% % %     d_s2r3(M)=feas_check_s2(M,N);
% % % end
% % % 
% % % 
% % % K=3;
% % % N=1;
% % % for M=M_data
% % %     d_s3r1(M)=feas_check_s3(M,N);
% % % end
% % % 
% % % 
% % % 
% % % K=3;
% % % N=2;
% % % for M=M_data
% % %     d_s3r2(M)=feas_check_s3(M,N);
% % % end
% % % 
% % % 
% % % K=3;
% % % N=3;
% % % for M=M_data
% % %     d_s3r3(M)=feas_check_s3(M,N);
% % % end
% % % 
% % % 
% % % 
% % % K=3;
% % % N=4;
% % % for M=M_data
% % %     d_s3r4(M)=feas_check_s3(M,N);
% % % end
% % % 
% % % 
% % % 
% % % 
% % % K=3;
% % % N=5;
% % % for M=M_data
% % %     d_s3r5(M)=feas_check_s3(M,N);
% % % end
% % % 
% % % 
% % % 
% % % K=3;
% % % N=6;
% % % for M=M_data
% % %     d_s3r6(M)=feas_check_s3(M,N);
% % % end
% % % 
% % % 
% % % 
% % % K=3;
% % % N=7;
% % % for M=M_data
% % %     d_s3r7(M)=feas_check_s3(M,N);
% % % end

load data_final.mat
st=5;
figure(1)
 M_data=[1:st:100],
M_data1=ones(1,100/st);
 
plot(M_data ,d_s2r1(1:st:end)./M_data1,'b')
grid on
hold on
plot(M_data ,d_s2r2(1:st:end)./M_data1,'r')
plot(M_data ,d_s2r3(1:st:end)./M_data1,'y')

plot(M_data ,d_s3r1(1:st:end)./M_data1,'k')
plot(M_data ,d_s3r2(1:st:end)./M_data1,'g')

plot(M_data ,d_s3r3(1:st:end)./M_data1,'k')
plot(M_data ,d_s3r4(1:st:end)./M_data1,'b')
plot(M_data ,d_s3r5(1:st:end)./M_data1,'m')
plot(M_data ,d_s3r6(1:st:end)./M_data1,'m')
plot(M_data ,d_s3r7(1:st:end)./M_data1,'m')
plot(M_data ,2*M_data./M_data1,'b')
plot(M_data ,3*M_data./M_data1,'b')
hold off

legend('s2r1','s2r2','s2r3','s3r1','s3r2','s3r3','s3r4','s3r5','s3r6','s3r7','Max. DoF 2User','Max. DoF 2 User' )


figure(2)
 
 
 M_data=[1:st:100];
M_data2=[1:st:100];
 
plot(M_data ,d_s2r1(1:st:end)./M_data2,'b')
grid on
hold on
plot(M_data ,d_s2r2(1:st:end)./M_data2,'r')
plot(M_data ,d_s2r3(1:st:end)./M_data2,'y')

plot(M_data ,d_s3r1(1:st:end)./M_data2,'k')
plot(M_data ,d_s3r2(1:st:end)./M_data2,'g')

plot(M_data ,d_s3r3(1:st:end)./M_data2,'k')
plot(M_data ,d_s3r4(1:st:end)./M_data2,'b')
plot(M_data ,d_s3r5(1:st:end)./M_data2,'m')
plot(M_data ,d_s3r6(1:st:end)./M_data2,'m')
plot(M_data ,d_s3r7(1:st:end)./M_data2,'m')
plot(M_data ,2*M_data./M_data2,'b')
plot(M_data ,3*M_data./M_data2,'b')
hold off
legend('s2r1','s2r2','s2r3','s3r1','s3r2','s3r3','s3r4','s3r5','s3r6','s3r7','Max. DoF 2User','Max. DoF 2 User' )
