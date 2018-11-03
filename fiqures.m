%IHN
% figure(1)
% x=1:8;
% tdma=1:8;
% ain=[1 3 4 6 7 9 10 12];
% proper=[1 3 5 6 8 10 12 13];
% mse=[1 3 5 6 8 9 11 12];
% ia=tdma;
% 
% plot(x,tdma,'b')
% hold on
% plot(x,ain,'r')
% plot(x,proper,'k')
% plot(x,mse,'g')
% plot(x,ia,'m')
% hold off
% grid on
% legend('TDMA','AIN','Proper','MSE','IA')



% figure(1)
% x=1:6;
% tdma=1:6;
% ain=[1 2 4 5 6 8];
% proper=[1 3 5 7 9 11  ];
% ia=[1 3 4 6 7 9];
% mse=[1 3 5 7 8 10];
% 
% plot(x,tdma,'b')
% hold on
% plot(x,ain,'r')
% plot(x,proper,'k')
% plot(x,mse,'g')
% plot(x,ia,'m')
% hold off
% grid on
% legend('TDMA','AIN','Proper','MSE','IA')


figure(1)
x=1:6;
tdma=1:6;
ain=[1 3 5 6 8 10];
proper=[1 4 6 8 10 13  ];
ia=[1 3 4 6 7 9];
mse=[1 4 6 8 10 11];

plot(x,tdma,'b')
hold on
plot(x,ain,'r')
plot(x,proper,'k')
plot(x,mse,'g')
plot(x,ia,'m')
hold off
grid on
legend('TDMA','AIN','Proper','MSE','IA')