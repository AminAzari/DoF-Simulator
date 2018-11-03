% % [  w1^2 + w2*w4 + w3*w7-l, w1*w2 + w2*w5 + w3*w8, w1*w3 + w2*w6 + w3*w9
% %  w1*w4 + w4*w5 + w6*w7,  w5^2 + w2*w4 + w6*w8-l, w3*w4 + w5*w6 + w6*w9
% %  w1*w7 + w4*w8 + w7*w9, w2*w7 + w5*w8 + w8*w9,  w9^2 + w3*w7 + w6*w8-l]
% % 
% % 
% % W1l = [   w1^2 + w3^2-l, w1*w2 + w3*w4
% %  w1*w2 + w3*w4,   w2^2 + w4^2-l]
% %     
% %     clear all
% %     clc
% %     syms w1 w2 %w3 w4
% %     w3=1;
% %     w4=3;
% % %     S=solve('w1*w4-w2*w3','w1^2+w4^2-2*w2*w3');
% %      S=solve('w1*3-w2*1','w1^2+3^2+2*w2*1');
% %     w1=S.w1
% %     w2=S.w2
%     
% %     
    clc
    clear all
    syms w1 w2 w3 w4 w5 w6 w7 w8 w9 l
    W=[w1 w2 w3; w4 w5 w6; w7 w8 w9];
    W1=W'*W;
    W2(1,1)=W1(1,1)-l;W2(2,2)=W1(2,2)-l;W2(3,3)=W1(3,3)-l;W2(1,2)=W1(1,2);W2(1,3)=W1(1,3);W2(2,1)=W1(2,1);W2(2,3)=W1(2,3);W2(3,1)=W1(3,1);W2(3,2)=W1(3,2);
    solve('- w1*w5*conj(w1)*conj(w5) + w1*w5*conj(w2)*conj(w4) + w2*w4*conj(w1)*conj(w5) - w2*w4*conj(w2)*conj(w4) - w1*w6*conj(w1)*conj(w6) + w1*w6*conj(w3)*conj(w4) +  w3*w4*conj(w1)*conj(w6) - w3*w4*conj(w3)*conj(w4) - w2*w6*conj(w2)*conj(w6) +  w2*w6*conj(w3)*conj(w5) + w3*w5*conj(w2)*conj(w6) - w3*w5*conj(w3)*conj(w5) -  w1*w8*conj(w1)*conj(w8) + w1*w8*conj(w2)*conj(w7) + w2*w7*conj(w1)*conj(w8) - w2*w7*conj(w2)*conj(w7) - w1*w9*conj(w1)*conj(w9) + w1*w9*conj(w3)*conj(w7) + w3*w7*conj(w1)*conj(w9) - w3*w7*conj(w3)*conj(w7) - w2*w9*conj(w2)*conj(w9) + w2*w9*conj(w3)*conj(w8) + w3*w8*conj(w2)*conj(w9) - w3*w8*conj(w3)*conj(w8) - w4*w8*conj(w4)*conj(w8) + w4*w8*conj(w5)*conj(w7) + w5*w7*conj(w4)*conj(w8) - w5*w7*conj(w5)*conj(w7) - w4*w9*conj(w4)*conj(w9) + w4*w9*conj(w6)*conj(w7) + w6*w7*conj(w4)*conj(w9) - w6*w7*conj(w6)*conj(w7) - w5*w9*conj(w5)*conj(w9) + w5*w9*conj(w6)*conj(w8) + w6*w8*conj(w5)*conj(w9) - w6*w8*conj(w6)*conj(w8) ')
    
    % 
%     - l^3 +
% 
%     l^2*w1*conj(w1) +l^2*w2*conj(w2) + l^2*w3*conj(w3) + l^2*w4*conj(w4) + l^2*w5*conj(w5) + 
% l^2*w6*conj(w6) + l^2*w7*conj(w7) + l^2*w8*conj(w8) + l^2*w9*conj(w9)
% 
% - l*w1*w5*conj(w1)*conj(w5) + l*w1*w5*conj(w2)*conj(w4) + l*w2*w4*conj(w1)*conj(w5) 
% - l*w2*w4*conj(w2)*conj(w4) - l*w1*w6*conj(w1)*conj(w6) + l*w1*w6*conj(w3)*conj(w4) + 
% l*w3*w4*conj(w1)*conj(w6) - l*w3*w4*conj(w3)*conj(w4) - l*w2*w6*conj(w2)*conj(w6) + 
% l*w2*w6*conj(w3)*conj(w5) + l*w3*w5*conj(w2)*conj(w6) - l*w3*w5*conj(w3)*conj(w5) - 
% l*w1*w8*conj(w1)*conj(w8) + l*w1*w8*conj(w2)*conj(w7) + l*w2*w7*conj(w1)*conj(w8) - 
% l*w2*w7*conj(w2)*conj(w7) - l*w1*w9*conj(w1)*conj(w9) + l*w1*w9*conj(w3)*conj(w7) + 
% l*w3*w7*conj(w1)*conj(w9) - l*w3*w7*conj(w3)*conj(w7) - l*w2*w9*conj(w2)*conj(w9) + 
% l*w2*w9*conj(w3)*conj(w8) + l*w3*w8*conj(w2)*conj(w9) - l*w3*w8*conj(w3)*conj(w8) - 
% l*w4*w8*conj(w4)*conj(w8) + l*w4*w8*conj(w5)*conj(w7) + l*w5*w7*conj(w4)*conj(w8) - 
% l*w5*w7*conj(w5)*conj(w7) - l*w4*w9*conj(w4)*conj(w9) + l*w4*w9*conj(w6)*conj(w7) + 
% l*w6*w7*conj(w4)*conj(w9) - l*w6*w7*conj(w6)*conj(w7) - l*w5*w9*conj(w5)*conj(w9) + 
% l*w5*w9*conj(w6)*conj(w8) + l*w6*w8*conj(w5)*conj(w9) - l*w6*w8*conj(w6)*conj(w8) 
% 
% +w1*w5*w9*conj(w1)*conj(w5)*conj(w9) - w1*w5*w9*conj(w1)*conj(w6)*conj(w8) - 
% w1*w5*w9*conj(w2)*conj(w4)*conj(w9) + w1*w5*w9*conj(w2)*conj(w6)*conj(w7) + 
% w1*w5*w9*conj(w3)*conj(w4)*conj(w8) - w1*w5*w9*conj(w3)*conj(w5)*conj(w7) - 
% w1*w6*w8*conj(w1)*conj(w5)*conj(w9) + w1*w6*w8*conj(w1)*conj(w6)*conj(w8) + 
% w1*w6*w8*conj(w2)*conj(w4)*conj(w9) - w1*w6*w8*conj(w2)*conj(w6)*conj(w7) - 
% w1*w6*w8*conj(w3)*conj(w4)*conj(w8) + w1*w6*w8*conj(w3)*conj(w5)*conj(w7) - 
% w2*w4*w9*conj(w1)*conj(w5)*conj(w9) + w2*w4*w9*conj(w1)*conj(w6)*conj(w8) + 
% w2*w4*w9*conj(w2)*conj(w4)*conj(w9) - w2*w4*w9*conj(w2)*conj(w6)*conj(w7) - 
% w2*w4*w9*conj(w3)*conj(w4)*conj(w8) + w2*w4*w9*conj(w3)*conj(w5)*conj(w7) + 
% w2*w6*w7*conj(w1)*conj(w5)*conj(w9) - w2*w6*w7*conj(w1)*conj(w6)*conj(w8) - 
% w2*w6*w7*conj(w2)*conj(w4)*conj(w9) + w2*w6*w7*conj(w2)*conj(w6)*conj(w7) + 
% w2*w6*w7*conj(w3)*conj(w4)*conj(w8) - w2*w6*w7*conj(w3)*conj(w5)*conj(w7) + 
% w3*w4*w8*conj(w1)*conj(w5)*conj(w9) - w3*w4*w8*conj(w1)*conj(w6)*conj(w8) - 
% w3*w4*w8*conj(w2)*conj(w4)*conj(w9) + w3*w4*w8*conj(w2)*conj(w6)*conj(w7) + 
% w3*w4*w8*conj(w3)*conj(w4)*conj(w8) - w3*w4*w8*conj(w3)*conj(w5)*conj(w7) - 
% w3*w5*w7*conj(w1)*conj(w5)*conj(w9) + w3*w5*w7*conj(w1)*conj(w6)*conj(w8) + 
% w3*w5*w7*conj(w2)*conj(w4)*conj(w9) - w3*w5*w7*conj(w2)*conj(w6)*conj(w7) - 
% w3*w5*w7*conj(w3)*conj(w4)*conj(w8) + w3*w5*w7*conj(w3)*conj(w5)*conj(w7)
 
    
% %     
% %     
% %     W1 =   [ w1^2 + w4^2 + w7^2-l, w1*w2 + w4*w5 + w7*w8, w1*w3 + w4*w6 + w7*w9
% %  w1*w2 + w4*w5 + w7*w8,    w2^2 + w5^2 + w8^2-l, w2*w3 + w5*w6 + w8*w9
% %  w1*w3 + w4*w6 + w7*w9, w2*w3 + w5*w6 + w8*w9,    w3^2 + w6^2 + w9^2-l]
% 
% % % % 
% % % % - l^3 +
% % % % l^2*w1^2 + l^2*w2^2 + l^2*w3^2 + l^2*w4^2 + l^2*w5^2 + l^2*w6^2 + l^2*w7^2 + l^2*w8^2 + l^2*w9^2 
% % % % 
% % % % - l*w1^2*w5^2 - l*w1^2*w6^2 - l*w1^2*w8^2 - l*w1^2*w9^2 + 2*l*w1*w2*w4*w5 + 2*l*w1*w2*w7*w8  + 2*l*w1*w3*w4*w6 + 2*l*w1*w3*w7*w9 - l*w2^2*w4^2 - l*w2^2*w6^2 - l*w2^2*w7^2 - l*w2^2*w9^2 + 2*l*w2*w3*w5*w6 + 2*l*w2*w3*w8*w9 - l*w3^2*w4^2 - l*w3^2*w5^2 - l*w3^2*w7^2 - l*w3^2*w8^2- l*w4^2*w8^2 - l*w4^2*w9^2 + 2*l*w4*w5*w7*w8 + 2*l*w4*w6*w7*w9 - l*w5^2*w7^2 - l*w5^2*w9^2 + 2*l*w5*w6*w8*w9 - l*w6^2*w7^2 - l*w6^2*w8^2
% % % % 
% % % % + w1^2*w5^2*w9^2 - 2*w1^2*w5*w6*w8*w9 + w1^2*w6^2*w8^2 - 2*w1*w2*w4*w5*w9^2 + 2*w1*w2*w4*w6*w8*w9  + 2*w1*w2*w5*w6*w7*w9 - 2*w1*w2*w6^2*w7*w8 + 2*w1*w3*w4*w5*w8*w9 - 2*w1*w3*w4*w6*w8^2 - 2*w1*w3*w5^2*w7*w9  + 2*w1*w3*w5*w6*w7*w8 + w2^2*w4^2*w9^2 - 2*w2^2*w4*w6*w7*w9 + w2^2*w6^2*w7^2 - 2*w2*w3*w4^2*w8*w9  + 2*w2*w3*w4*w5*w7*w9 + 2*w2*w3*w4*w6*w7*w8 - 2*w2*w3*w5*w6*w7^2 + w3^2*w4^2*w8^2 - 2*w3^2*w4*w5*w7*w8 + w3^2*w5^2*w7^2
% 
% 
% 
% 
% % % % % (w1*w5*w9 - w1*w6*w8 - w2*w4*w9 + w2*w6*w7 + w3*w4*w8 - w3*w5*w7)^2
% % % % % 
% % % % % 
% % % % % - w1^2*w5^2 - w1^2*w6^2 - w1^2*w8^2 - w1^2*w9^2 + 2*w1*w2*w4*w5 + 
% 2*w1*w2*w7*w8 + 2*w1*w3*w4*w6 + 2*w1*w3*w7*w9 - w2^2*w4^2 - w2^2*w6^2 
% - w2^2*w7^2 - w2^2*w9^2 + 2*w2*w3*w5*w6 + 2*w2*w3*w8*w9 - w3^2*w4^2 
% - w3^2*w5^2 - w3^2*w7^2 - w3^2*w8^2 - w4^2*w8^2 - w4^2*w9^2 + 2*w4*w5*w7*w8 
% + 2*w4*w6*w7*w9 - w5^2*w7^2 - w5^2*w9^2 + 2*w5*w6*w8*w9 - w6^2*w7^2 - w6^2*w8^2
% 
% 
% 
% 
% 
% 
% 
% % - l^3 + 
% % 
% % l^2*w1^2 + l^2*w2^2 + l^2*w3^2 + l^2*w4^2 + l^2*w5^2 + l^2*w6^2 + l^2*w7^2 + l^2*w8^2 + l^2*w9^2 
% % 
% % - l*w1^2*w5^2 - l*w1^2*w6^2 - l*w1^2*w8^2 - l*w1^2*w9^2 + 2*l*w1*w2*w4*w5 + 2*l*w1*w2*w7*w8 + 2*l*w1*w3*w4*w6 +  2*l*w1*w3*w7*w9 - l*w2^2*w4^2 - l*w2^2*w6^2 - l*w2^2*w7^2 - l*w2^2*w9^2 + 2*l*w2*w3*w5*w6 + 2*l*w2*w3*w8*w9 - l*w3^2*w4^2 - l*w3^2*w5^2  - l*w3^2*w7^2 - l*w3^2*w8^2 - l*w4^2*w8^2 - l*w4^2*w9^2 + 2*l*w4*w5*w7*w8 + 2*l*w4*w6*w7*w9 - l*w5^2*w7^2 - l*w5^2*w9^2 + 2*l*w5*w6*w8*w9 - l*w6^2*w7^2 - l*w6^2*w8^2 
% % 
% clc
% clear all
% syms w1 w2 w3 w4 w5 w6 w7 w8 w9
% %    w3=3  w4=9;w5=5;w6=11;w7=7;w8=3;w9=3;l=1;
% S=solve('(w1*w5*w9 - w1*w6*w8 - w2*w4*w9 + w2*w6*w7 + w3*w4*w8 - w3*w5*w7)','- w1^2*w5^2 - w1^2*w6^2 - w1^2*w8^2 - w1^2*w9^2 + 2*w1*w2*w4*w5 + 2*w1*w2*w7*w8 + 2*w1*w3*w4*w6 + 2*w1*w3*w7*w9 - w2^2*w4^2 - w2^2*w6^2 - w2^2*w7^2 - w2^2*w9^2 + 2*w2*w3*w5*w6 + 2*w2*w3*w8*w9 - w3^2*w4^2 - w3^2*w5^2 - w3^2*w7^2 - w3^2*w8^2 - w4^2*w8^2 - w4^2*w9^2 + 2*w4*w5*w7*w8 + 2*w4*w6*w7*w9 - w5^2*w7^2 - w5^2*w9^2 + 2*w5*w6*w8*w9 - w6^2*w7^2 - w6^2*w8^2');
%  S ;          
%  
% % % % % 
% % % % % 
% % % % % 
% % % % % 
%    W=[  w1  w2 w3; w4 w5 w6; w7 w8 w9]
% %   transpose(W)*W 
% 
%  
% % 
% %  
% %   W1 =[                       (3/5 + (6^(1/2)*i)/5)^2 + 2-l, (3/5 + (6^(1/2)*i)/5)*(4/5 + (3*6^(1/2)*i)/5) + 3,   18/5 + (6^(1/2)*i)/5
% %  (3/5 + (6^(1/2)*i)/5)*(4/5 + (3*6^(1/2)*i)/5) + 3,                     (4/5 + (3*6^(1/2)*i)/5)^2 + 5-l, 24/5 + (3*6^(1/2)*i)/5
% %                               18/5 + (6^(1/2)*i)/5,                            24/5 + (3*6^(1/2)*i)/5,                      6-l]
% %  
% 
% 
% 
% 
% 
% 
% 
% 
% 
%     
%     
%     
%     