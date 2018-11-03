function S=s_di(D,K)

if(K==2)
    if (D==0)
        d1=0;
        d2=0;
    elseif(D==1)
        d1=1;
        d2=0;
    elseif (mod(D,K)==0)
        d1=D/K;
        d2=D/K;
    elseif(mod(D,K)==1)
        d1=floor(D/K);
        d2=floor(D/K)+1;
    end
    S=d1^2+d2^2;
elseif(K==3)
    if (D==0)
        d1=0;
        d2=0;
        d3=0;
    elseif(D==1)
        d1=1;
        d2=0;
        d3=0;
    elseif(D==2)
        d1=1;
        d2=1;
        d3=0;
        
    elseif (mod(D,K)==0)
        d1=D/K;
        d2=D/K;
        d3=D/K;
    elseif(mod(D,K)==1)
        d1=floor(D/K);
        d2=floor(D/K);
        d3=floor(D/K)+1;
    elseif(mod(D,K)==2)
        d1=floor(D/K);
        d2=floor(D/K)+1;
        d3=floor(D/K)+1;
    end
    S=d1^2+d2^2+d3^2;
elseif(K==4)
    if(D==0)
        d1=0;
        d2=0;
        d3=0;
        d4=0;
    elseif(D==1)
        d1=1;
        d2=0;
        d3=0;
        d4=0;
    elseif(D==2)
        d1=1;
        d2=1;
        d3=0;
        d4=0;
    elseif(D==3)
        d1=1;
        d2=1;
        d3=1;
        d4=0;
        
    elseif (mod(D,K)==0)
        d1=D/K;
        d2=D/K;
        d3=D/K;
        d4=D/K;
    elseif(mod(D,K)==1)
        d1=floor(D/K);
        d2=floor(D/K);
        d3=floor(D/K);
        d4=floor(D/K)+1;
    elseif(mod(D,K)==2)
        d1=floor(D/K);
        d2=floor(D/K);
        d3=floor(D/K)+1;
        d4=floor(D/K)+1;
    elseif(mod(D,K)==3)
        d1=floor(D/K);
        d2=floor(D/K)+1;
        d3=floor(D/K)+1;
        d4=floor(D/K)+1;
    end
    S=d1^2+d2^2+d3^2+d4^2;
end