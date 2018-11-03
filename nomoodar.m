%IHN
clc
clear all
% close all
figure(2)
M_data=[1:100];
M_data1=ones(1,100);
% M_data1=[1:100];
K=2;
N=1;
for M=M_data
    d_s2r1(M)=feas_check_s2(M,N);
end


plot(M_data,d_s2r1./M_data1,'b')
grid on
hold on

K=2;
N=2;
for M=M_data
    d_s2r2(M)=feas_check_s2(M,N);
end
plot(M_data,d_s2r2./M_data1,'r')

K=3;
N=1;
for M=M_data
    d_s3r1(M)=feas_check_s3(M,N);
end
plot(M_data,d_s3r1./M_data1,'k')

K=3;
N=2;
for M=M_data
    d_s3r2(M)=feas_check_s3(M,N);
end
plot(M_data,d_s3r2./M_data1,'g')

K=3;
N=3;
for M=M_data
    d_s3r3(M)=feas_check_s3(M,N);
end
plot(M_data,d_s3r3./M_data1,'c')

K=10;
N=8;
for M=M_data
    d_s10r8(M)=feas_check_s10(M,N);
end
plot(M_data,d_s10r8./M_data1,'m')

K=10;
N=9;
for M=M_data
    d_s10r9(M)=feas_check_s10(M,N);
end
plot(M_data,d_s10r9./M_data1,'r*')

K=10;
N=10;
for M=M_data
    d_s10r10(M)=feas_check_s10(M,N);
end
plot(M_data,d_s10r10./M_data1,'b*')

hold off

legend('s2r1','s2r2','s3r1','s3r2','s3r3','s10r8','s10r9', 's10r10')
