i=0;
temp=-1;
PxSum=0;
Zsum=0;
n=48;
p=0.84;
list_z = zeros(1, 10)
SumDis=0;

while i <10
    i=i+1;
    r=rand()
    PxSum = 0;
    for m = 0:n
        C=factorial(n)/(factorial(m)*factorial(n - m))
        Px = C * p^m *(1 - p)^(n - m)
        PxSum=PxSum+Px
        if r>temp & r <= PxSum
            disp("Длина сообщения",m)
            disp("r",r)
            disp('Нижнее число промежутка',PxSum)
            disp('Верхнее число промежутка',temp)
            if m>0 then
                z=(m-1)+(r-temp)*(m-(m-1))/(PxSum-temp)
                disp('z',z)
                Zsum=Zsum+z
                list_z(i)=z
            end
            break;
        end
        disp(PxSum)
        temp=PxSum;
    end
    if r<0.03 then
        disp ("1")
    elseif r>0.03 & r<=0.22 then
        disp("2")
    elseif r>0.22 & r<=0.37 then
        disp("3")
    elseif r>0.37 & r<=1 then
        disp("4")
    end
end

//мат.ожид.
mat_ojid=Zsum/10

//дисперсия
for f =1:10
    dispersya=(list_z(f)-mat_ojid)^2
    SumDis=SumDis+dispersya
end
d_prac=SumDis*1/9
//Среднеквадратичное отклонение
sr_prac=sqrt(d_prac)


//теор мат.ожид
mat_ojid_teor=48*0.84;
//тео.дисперсия
d_teor=48*0.84*0.16
//теор.квадр.откл.
sr_teor=sqrt(d_teor)


disp("практ.мат.ожид.",mat_ojid)
disp("теор.мат.oжид.",mat_ojid_teor)
disp("практ дисп.",d_prac)
disp("теор дисп.",d_teor)
disp("теор. квадp. откл.", sr_teor)
disp("практ.квадp. откл.", sr_prac)















