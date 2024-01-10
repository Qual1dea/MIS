// k=900, 1=0.14, 2=0.62, 3=0.24
i=0;
a=zeros(1,98)
mas = zeros (1, 900);
while i<900
    i=i+1;
    r=rand()
    if r <=0.14 then sel = 1;
    elseif (r>0.14) & (r<=0.76) then sel =2;
    elseif (r>0.76) &(r<=1) then sel =3;
    end
    select sel 
    case 1 a(1)=a(1)+1;
        disp("1")
    case 2 a(2)=a(2)+1;
        disp("2")
    case 3 a(3)=a(3)+i;
        disp("3")
    end
    function [P_x]=fun(mx)
        P=0;
        x=1;
        a=zeros(1,98)
        while x<=mx
            x=x+1;
            P=(%e^(-50)*50^x)/factorial(x);
            a(x)=P+a(x-1)
        end
        [P_x]=a;
    endfunction
end

a=fun(98);

for i=1:900
    r=rand()
    d=rand()
    for x=1:98
        if r<a(x) then
            mas(i)=x
            printf('позиция: %d\n', x);
            break;
        end
    end
end
disp(a)
//Математическое ожидание
mat_ojid=sum(mas)/900;
disp('mat_ojid',mat_ojid)
//Дисперсия 
dispersya=0;
for f =1:900
    dispersya=dispersya+(mas(f)-mat_ojid)^2;
end
d=dispersya/899
disp('dispersya',d)
//Среднеквадратичное отклонение
sr=sqrt(d)
disp('Среднеквадратичное отклонение',sr)























