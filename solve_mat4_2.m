clear all
clc
syms w1 w2 w3 w4   w5   w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 w16

%    w6=6;w7=7;w8=8;w9=9;

W=[w1 w2 w3 w4 ;
    w5 w6 w7 w8;
    w9 w10 w11 w12
    w13 w14 w15 w16];

W1=W;
i=0;
for Aa=1:6
    for Bb=1:6
        switch(Aa)
            case(1)
                AA=[1,2 ];
            case(2)
                AA=[1,3];
            case(3)
                AA=[1,4];
            case(4)
                AA=[2,3 ];
            case(5)
                AA=[2,4 ];
            case(6)
                AA=[3,4];
 
        end
        switch(Bb)
            case(1)
                BB=[1,2 ];
            case(2)
                BB=[1,3];
            case(3)
                BB=[1,4];
            case(4)
                BB=[2,3 ];
            case(5)
                BB=[2,4 ];
            case(6)
                BB=[3,4];
        end
        i=i+1;
        A(i)=fun_r(AA,BB,W1);
    end
end



S=solve(A(1),A(2),A(3),A(4),A(5),A(6),A(7),A(8),A(9),A(10),A(11),A(12),A(13),A(14),A(15),A(16),A(17),A(18),A(19),A(20),A(21),A(22),A(23),A(24),A(25),A(26),A(27),A(28),A(29),A(30),A(31),A(32),A(33),A(34),A(35),A(36))

% B1=S.w1;
% B2=S.w2;
% B3=S.w3;
% B4=S.w4;


S.w1
S.w2
S.w3
S.w4
S.w5
S.w6
S.w7
S.w8
S.w9
S.w10
S.w11
S.w12
S.w13
S.w14
S.w15
S.w16
