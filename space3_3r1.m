clc

 
 load('F:\!MSE project\docs\Final results_MSE\Final results_MSE\test_naghz.mat')

f_1_1_1=H_1_1*v_1(:,1);
f_1_1_2=H_1_1*v_1(:,2);
f_1_2_1=H_1_2*v_2(:,1);
f_1_2_2=H_1_2*v_2(:,2);
f_1_3_1=H_1_3*v_3(:,1);

f_2_1_1=H_2_1*v_1(:,1);
f_2_1_2=H_2_1*v_1(:,2);
f_2_2_1=H_2_2*v_2(:,1);
f_2_2_2=H_2_2*v_2(:,2);
f_2_3_1=H_2_3*v_3(:,1);

f_3_1_1=H_3_1*v_1(:,1);
f_3_1_2=H_3_1*v_1(:,2);
f_3_2_1=H_3_2*v_2(:,1);
f_3_2_2=H_3_2*v_2(:,2);
f_3_3_1=H_3_3*v_3(:,1);

g_1_1_1=H_1_r_1*v_1(:,1);
g_1_1_2=H_1_r_1*v_1(:,2);
g_1_2_1=H_1_r_2*v_2(:,1);
g_1_2_2=H_1_r_2*v_2(:,2);
g_1_3_1=H_1_r_3*v_3(:,1);

g_2_1_1=H_2_r_1*v_1(:,1);
g_2_1_2=H_2_r_1*v_1(:,2);
g_2_2_1=H_2_r_2*v_2(:,1);
g_2_2_2=H_2_r_2*v_2(:,2);
g_2_3_1=H_2_r_3*v_3(:,1);

g_3_1_1=H_3_r_1*v_1(:,1);
g_3_1_2=H_3_r_1*v_1(:,2);
g_3_2_1=H_3_r_2*v_2(:,1);
g_3_2_2=H_3_r_2*v_2(:,2);
g_3_3_1=H_3_r_3*v_3(:,1);

% 
e_1_1_1=H_p_1_1*v_1(:,1);
e_1_1_2=H_p_1_1*v_1(:,2);
e_1_2_1=H_p_1_2*v_2(:,1);
e_1_2_2=H_p_1_2*v_2(:,2);
e_1_3_1=H_p_1_3*v_3(:,1);

e_2_1_1=H_p_2_1*v_1(:,1);
e_2_1_2=H_p_2_1*v_1(:,2);
e_2_2_1=H_p_2_2*v_2(:,1);
e_2_2_2=H_p_2_2*v_2(:,2);
e_2_3_1=H_p_2_3*v_3(:,1);

e_3_1_1=H_p_3_1*v_1(:,1);
e_3_1_2=H_p_3_1*v_1(:,2);
e_3_2_1=H_p_3_2*v_2(:,1);
e_3_2_2=H_p_3_2*v_2(:,2);
e_3_3_1=H_p_3_3*v_3(:,1);


figure(1)
plot3([0,e_1_1_1(1)],[0,e_1_1_1(2)],[0,e_1_1_1(3)],'b*-')
hold on
plot3([0,e_1_1_2(1)],[0,e_1_1_2(2)],[0,e_1_1_2(3)],'g*-')
plot3([0,e_1_2_1(1)],[0,e_1_2_1(2)],[0,e_1_2_1(3)],'k*-')
plot3([0,e_1_2_2(1)],[0,e_1_2_2(2)],[0,e_1_2_2(3)],'m*-')
plot3([0,e_1_3_1(1)],[0,e_1_3_1(2)],[0,e_1_3_1(3)],'r*-')
plot3([0,f_1_1_1(1)],[0,f_1_1_1(2)],[0,f_1_1_1(3)],'bs-')
plot3([0,f_1_1_2(1)],[0,f_1_1_2(2)],[0,f_1_1_2(3)],'gs-')
plot3([0,f_1_2_1(1)],[0,f_1_2_1(2)],[0,f_1_2_1(3)],'ks-')
plot3([0,f_1_2_2(1)],[0,f_1_2_2(2)],[0,f_1_2_2(3)],'ms-')
plot3([0,f_1_3_1(1)],[0,f_1_3_1(2)],[0,f_1_3_1(3)],'rs-')
plot3([0,g_1_1_1(1)],[0,g_1_1_1(2)],[0,g_1_1_1(3)],'bo-')
plot3([0,g_1_1_2(1)],[0,g_1_1_2(2)],[0,g_1_1_2(3)],'go-')
plot3([0,g_1_2_1(1)],[0,g_1_2_1(2)],[0,g_1_2_1(3)],'ko-')
plot3([0,g_1_2_2(1)],[0,g_1_2_2(2)],[0,g_1_2_2(3)],'mo-')
plot3([0,g_1_3_1(1)],[0,g_1_3_1(2)],[0,g_1_3_1(3)],'ro-')
 

hold off
grid on

figure(2)
plot3([0,e_2_1_1(1)],[0,e_2_1_1(2)],[0,e_2_1_1(3)],'b*-')
hold on
plot3([0,e_2_1_2(1)],[0,e_2_1_2(2)],[0,e_2_1_2(3)],'g*-')
plot3([0,e_2_2_1(1)],[0,e_2_2_1(2)],[0,e_2_2_1(3)],'k*-')
plot3([0,e_2_2_2(1)],[0,e_2_2_2(2)],[0,e_2_2_2(3)],'m*-')
plot3([0,e_2_3_1(1)],[0,e_2_3_1(2)],[0,e_2_3_1(3)],'r*-')
plot3([0,f_2_1_1(1)],[0,f_2_1_1(2)],[0,f_2_1_1(3)],'bs-')
plot3([0,f_2_1_2(1)],[0,f_2_1_2(2)],[0,f_2_1_2(3)],'gs-')
plot3([0,f_2_2_1(1)],[0,f_2_2_1(2)],[0,f_2_2_1(3)],'ks-')
plot3([0,f_2_2_2(1)],[0,f_2_2_2(2)],[0,f_2_2_2(3)],'ms-')
plot3([0,f_2_3_1(1)],[0,f_2_3_1(2)],[0,f_2_3_1(3)],'rs-')
plot3([0,g_2_1_1(1)],[0,g_2_1_1(2)],[0,g_2_1_1(3)],'bo-')
plot3([0,g_2_1_2(1)],[0,g_2_1_2(2)],[0,g_2_1_2(3)],'go-')
plot3([0,g_2_2_1(1)],[0,g_2_2_1(2)],[0,g_2_2_1(3)],'ko-')
plot3([0,g_2_2_2(1)],[0,g_2_2_2(2)],[0,g_2_2_2(3)],'mo-')
plot3([0,g_2_3_1(1)],[0,g_2_3_1(2)],[0,g_2_3_1(3)],'ro-')
hold off
grid on

figure(3)
plot3([0,e_3_1_1(1)],[0,e_3_1_1(2)],[0,e_3_1_1(3)],'b*-')
hold on
plot3([0,e_3_1_2(1)],[0,e_3_1_2(2)],[0,e_3_1_2(3)],'g*-')
plot3([0,e_3_2_1(1)],[0,e_3_2_1(2)],[0,e_3_2_1(3)],'k*-')
plot3([0,e_3_2_2(1)],[0,e_3_2_2(2)],[0,e_3_2_2(3)],'m*-')
plot3([0,e_3_3_1(1)],[0,e_3_3_1(2)],[0,e_3_3_1(3)],'r*-')
plot3([0,f_3_1_1(1)],[0,f_3_1_1(2)],[0,f_3_1_1(3)],'bs-')
plot3([0,f_3_1_2(1)],[0,f_3_1_2(2)],[0,f_3_1_2(3)],'gs-')
plot3([0,f_3_2_1(1)],[0,f_3_2_1(2)],[0,f_3_2_1(3)],'ks-')
plot3([0,f_3_2_2(1)],[0,f_3_2_2(2)],[0,f_3_2_2(3)],'ms-')
plot3([0,f_3_3_1(1)],[0,f_3_3_1(2)],[0,f_3_3_1(3)],'rs-')
plot3([0,g_3_1_1(1)],[0,g_3_1_1(2)],[0,g_3_1_1(3)],'bo-')
plot3([0,g_3_1_2(1)],[0,g_3_1_2(2)],[0,g_3_1_2(3)],'go-')
plot3([0,g_3_2_1(1)],[0,g_3_2_1(2)],[0,g_3_2_1(3)],'ko-')
plot3([0,g_3_2_2(1)],[0,g_3_2_2(2)],[0,g_3_2_2(3)],'mo-')
plot3([0,g_3_3_1(1)],[0,g_3_3_1(2)],[0,g_3_3_1(3)],'ro-')
hold off
grid on