%IHN
clc
clear all
close all

K=2;
Rs=1;
Re=12;
M_s=1;
M_e=10;

i=0;


for R=Rs:Re
    i=i+1;
    j=0;
    for M=M_s:M_e
        j=j+1;
        ij=0;
        for Mr=1: 2*M;
            ij=ij+1;
            D=K*M;
            
            while(D)
                S=s_di(D,K);
                if(R*Mr^2-(K-1)*(2*D-K*M)>= 0 && R*Mr^2+M*D-S-D^2+M*D >=0)
                    Do(i,j,ij)=D;
                    D=0;
                    0;
                elseif(R*Mr^2-(K-1)*(2*D-K*M)>= 0 && R*Mr^2+M*D-S-D^2+M*D < 0)
                    D=D-1;
                    1;
                elseif(R*Mr^2-(K-1)*(2*D-K*M)< 0 && R*Mr^2+M*D-S-D^2+M*D >= 0)
                     display(['[K,R,M,Mr,D]= ',num2str([K,R,M,Mr,D]), ])
                    D=D-1;
                    2;
                elseif(R*Mr^2-(K-1)*(2*D-K*M)< 0 && R*Mr^2+M*D-S-D^2+M*D < 0)
                    D=D-1;
                    3;
                end
            end
        end
    end
    
end

%
% plot([1:M_e],([1:M_e])*3,'ks')
% hold on
% plot([1:M_e],floor(1.5*([1:M_e])),'rs')
% plot([1:M_e],([1:M_e])*1,'bs-')
%
% plot([1:M_e],Do(1,:),'b')
% plot([1:M_e],Do(2,:),'r')
% plot([1:M_e],Do(3,:),'k')
% plot([1:M_e],Do(4,:),'g')
% plot([1:M_e],Do(5,:),'y')
% plot([1:M_e],Do(6,:),'m')
% plot([1:M_e],Do(7,:),'c')
% plot([1:M_e],Do(8,:),'b.-')
%
%
% hold off
%
% legend('Max DoF','IA-No IR','TDMA- No IR','ISOS-No IR','ISOS-1 IR','ISOS-2 IRs','ISOS-3 IRs','ISOS-4 IRs','ISOS-5 IRs','ISOS-6 IRs','ISOS-7 IRs' )


