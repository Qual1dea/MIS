//while , без массива, if-then-elseif, исп.функций, запись в файл.
//k=900, 1=0.14, 2=0.62, 3=0.24
//Нормальное распределение μ=6.3 , σ 2,2
a=0;
b=0;
c=0;
i=0;

sum=0;
q=0;
m2=0;
msum=0;
//с исп.while
while i<900
    i=i+1;
    r=rand();
    while q<12
        q=q+1;
        rq=rand();
        sum=sum+rq;
    end
//с исп.массива
//num = 900;
//result = zeros(num, 1);
//while i < num

//с исп. for
//num = 900;
//inn = 12;
//for i = 1:num
//    r = rand();
//    for q = 1:inn
//        rq = rand();
//        sum = sum + rq;
//    end

//Нормальное распределение
res=sum-6;
m2=2.2*res+6.3;
q=0;
//Математическое ожидание
msum=msum+m2;
mat_ojid=msum/900;
//Практическая частота
prac_A=a/msum;
prac_B=b/msum;
prac_C=c/msum;
//Теоретичская частота
teor_A=a/(900*6.3);
teor_B=b/(900*6.3);
teor_C=c/(900*6.3);

//с исп. if-then-elseif
    if r<=0.14 then
        a=a+1;
        sum=0;
        disp("1",m2);
    elseif r>0.14 & r<=0.76 then
        b=b+1;
        sum=0;
        disp("2",m2);
    elseif r>0.76 & r<=1 then
        c=c+1;
        sum=0;
        disp("3",m2);
end
end
//с исп. select-sace
//ranges = [0, 0.14, 0.76, 1];
//    for k = 1:3
//        if (r > ranges(k)) & (r <= ranges(k + 1))
//            select k
//                case 1
//                    a = a + 1;
//                case 2
//                    b = b + 1;
//                case 3
//                    c = c + 1;
//            end
//            sum = 0;
//            disp(string(k), m2);
//        end
//    end
//end

function [a,b,c]=fun(x1,x2,x3)
 
disp('количество 1',a)
disp('количество 2',b)
disp('количество 3',c)

disp('вероятность 1',a/x1)
disp('вероятность 2',b/x1)
disp('вероятность 3',c/x1)

disp('мат.ожид.:', mat_ojid)

disp('Практическая частота А',prac_A)
disp('Практическая частота B',prac_B)
disp('Практическая частота C',prac_C)

disp('Теоретическая частота А',teor_A)
disp('Теоретическая частота B',teor_B)
disp('Теоретическая частота C',teor_C)
endfunction
    [a,b,c]=fun(900,0.14,0.62)
