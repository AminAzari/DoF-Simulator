
%IHN
clear all
close all
load data_s2r1m2_bar1

% co=0;
% for i=1:100:oi
%     co=co+1;
%     figure(co)
%     AX=M_R_2(co,:);
%    plot([0,AX(1)],[0,AX(2)],'b')
%     hold on
%  
%     plot([0,R_1(1,1)],[0,R_1(1,2)],'r')
%     plot([0,R_1(2,1)],[0,R_1(2,2)],'k')
%     hold off
% end

% 
% co=0;
% for i=1:100:oi
%     co=co+1;
%     figure(co)
%     AX=M_v_2(co,:);
%     plot([0,AX(1)],[0,AX(2)],'b')
%     hold on
%     v_1=reshape(M_v_1(co,:),2,2);
%     plot([0,v_1(1,1)],[0,v_1(2,1)],'r')
%     plot([0,v_1(1,2)],[0,v_1(2,2)],'k')
%     hold off
% end

% 
co=0;
for i=1:100:oi
    co=co+1;
    figure(co)
    AX=H_r_2*M_v_2(co,:)';
   plot([0,AX(1)],[0,AX(2)],'b')
    hold on
    v_11=reshape(M_v_1(co,:),2,2);
    v_1=H_r_1*v_11;

    plot([0,v_1(1,1)],[0,v_1(2,1)],'r')
    plot([0,v_1(1,2)],[0,v_1(2,2)],'k')

    hold off
end