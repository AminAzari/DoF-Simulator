%IHN
clc
clear all
close all
K=4;
M=2;

i=0;
D_b=[1:M*K];
for Mr=1:8
    i=i+1;
    ii=0;
    for D=1:M*K
        ii=ii+1;
        A1=(2*D*(K-1)-M*K*(K-1))/(Mr^2);
        if(mod(D,K)==0)
            A2=((D^2)*(1+1/K)-2*M*D)/(Mr^2);
        else
            A2=((D^2)*(1+1/K)-2*M*D+1-1/K)/(Mr^2);
        end
        for R=0:60
            
            if(R>=A1 && R>=A2)
                SR(i,ii)=R;
                break;
            end
        end
    end
end

plot(D_b,SR(1,:),'b')
hold on
plot(D_b,SR(2,:),'r')
plot(D_b,SR(3,:),'k')
plot(D_b,SR(4,:),'g')
plot(D_b,SR(5,:),'r')
plot(D_b,SR(6,:),'k')
plot(D_b,SR(7,:),'g')
plot(D_b,SR(8,:),'g')
hold off

legend('Mr=1','2','3','4')




