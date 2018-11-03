clc

for i=2:6
a=feas_check_s4(i,1);
b=feas_check_s4_ne(i,1);
if(a~=b)
i
a
b
end
end
