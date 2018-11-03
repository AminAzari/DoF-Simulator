clc
clear all
close all
me=2;
K=8;
for i=1:K
    y1(i)=feas_check_s3_ne(i,me,0) ;
    y2(i)=feas_check_s3_ne(i,me,1) ;
    y3(i)=feas_check_s3(i,me) ;
    y4(i)=floor(i*3/2);
end

plot([1:K],y1,'b')
hold on
plot([1:K],y2,'r')
plot([1:K],y3,'k')
plot([1:K],y4,'g')
hold off
legend('no csi','csi','total','ia')
    