
function y=trac(Mn,D,k1)
j=1;
a=0;
c=0;
if(Mn+D>14)
    k=4;
elseif(Mn+D>10)
    k=3;
elseif(Mn+D>6)
    k=2;
else
    k=1;
end
 
while(j)
    v_1=rand(Mn,D)/k;
    if(abs(trace(v_1'*v_1)-1)<0.01)
        j=0;
    end
    a=a+trace(v_1'*v_1);
    c=c+1;
end
y=v_1;