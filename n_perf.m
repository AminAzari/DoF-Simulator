%IHN
clc
clear all
close all

K=3;
i=0;
M_e=100;

for R=0:7
    i=i+1;
    j=0;
    for M=1:3:M_e
        j=j+1;
        Mr=M;
        
        D=K*M;

        while(D)
                    S=s_di(D,K);
            if(R*Mr^2+M*D-S-D^2+M*D >=0 && R*Mr^2-(K-1)*(2*D-K*M)>= 0)
                Do(i,j)=D;
                D=0;
            else
                D=D-1;
            end
        end
    end
    
end

AS=[1:3:M_e];
plot(AS,3*AS./AS,'ks')
hold on
plot(AS,floor(1.5*(AS))./AS,'rs')
plot(AS,1*(AS)./AS,'bs-')

plot(AS,Do(1,:)./AS,'b')
plot(AS,Do(2,:)./AS,'r')
plot(AS,Do(3,:)./AS,'k')
plot(AS,Do(4,:)./AS,'g')
plot(AS,Do(5,:)./AS,'y')
plot(AS,Do(6,:)./AS,'m')
plot(AS,Do(7,:)./AS,'c')
plot(AS,Do(8,:)./AS,'b.-')
 

hold off

legend('Max DoF','IA-No IR','TDMA- No IR','ISOS-No IR','ISOS-1 IR','ISOS-2 IRs','ISOS-3 IRs','ISOS-4 IRs','ISOS-5 IRs','ISOS-6 IRs','ISOS-7 IRs' )


