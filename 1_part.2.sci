//while , без массива, if-then-elseif, исп.функций, запись в файл.
//k=900, 1=0.03, 2=0.19, 3=0.16, 4=0.62.
//Экспоненциальное распределение λ =0,69.
fd=mopen("test.txt","wt") // Открываем файл для записи

a=0; 
b=0;
c=0;
d=0;

i=0;
q=0;
lb=0.69; // λ =0,69
msum=0;
//с исп.while
while i < 900
    i=i+1;
    r=rand()
//с исп.массива
//num = 900;
//result = zeros(num, 1);
//while i < num

//с исп.for
//num = 900;
//for i = 1:num
//    r = rand();

//Экспоненциальное распределение
x = - 1 * log(r) / lb;
//mat_ojid
msum=msum+x
mat=msum/900
//практическая частота
prac_a=a/msum
prac_b=b/msum
prac_c=c/msum
prac_d=d/msum
//теоретическая частота
teor_a=(0.03*900)/(mat*900)
teor_b=(0.19*900)/(mat*900)
teor_c=(0.16*900)/(mat*900)
teor_d=(0.62*900)/(mat*900)
//с исп. if-then-elseif
    if r<=0.03 then
        a=a+1;
       disp("1","x:"+string(x))
       mfprintf(fd,"1\n","x:"+string(x))
    elseif r>0.03 & r<=0.22 then
        b=b+1;
        disp("2","x:"+string(x))
        mfprintf(fd,"2\n","x:"+string(x))
    elseif r>0.22 & r<=0.38 then
        c=c+1;
        disp("3","x:"+string(x))
        mfprintf(fd,"3\n","x:"+string(x))
    elseif r>0.38 & r<=1 then
        d=d+1;
        disp("4","x:"+string(x))
        mfprintf(fd,"4\n","x:"+string(x))
    end
end
////с исп.  select-case
//ranges = [0, 0.03, 0.22, 0.38, 1];
//    for k = 1:4
//        if (r > ranges(k)) & (r <= ranges(k + 1))
//            switch k
//                case 1
//                    a = a + 1;
//                    disp("1", "x:" + string(x))
//                    mfprintf(fd, "1\n", "x:" + string(x));
//                case 2
//                    b = b + 1;
//                    disp("2", "x:" + string(x))
//                    mfprintf(fd, "2\n", "x:" + string(x));
//                case 3
//                    c = c + 1;
//                    disp("3", "x:" + string(x))
//                    mfprintf(fd, "3\n", "x:" + string(x));
//                case 4
//                    d = d + 1;
//                    disp("4", "x:" + string(x))
//                    mfprintf(fd, "4\n", "x:" + string(x));
//            end
//            sum = 0;
//        end
//    end
//end

summa= a+b+c+d
mfprintf(fd,'Общее количество:%d\n',summa)

function [a,b,c,d]=fun(x1,x2,x3,x4)
mfprintf(fd,'количество 1:%d\n',a)
mfprintf(fd,'количество 2:%d\n',b)
mfprintf(fd,'количество 3:%d\n',c)
mfprintf(fd,'количество 4:%d\n',d)

mfprintf(fd,'вероятность 1:%f\n',a/700)
mfprintf(fd,'вероятность 2:%f\n',b/700)
mfprintf(fd,'вероятность 3:%f\n',c/700)
mfprintf(fd,'вероятность 4:%f\n',d/700)

mfprintf(fd,'мат.ожид.:%f\n',mat)
mfprintf(fd,'пракическая частота a:%f\n',prac_a)
mfprintf(fd,'пракическая частота b:%f\n',prac_b)
mfprintf(fd, 'пракическая частота c:%f\n',prac_c)
mfprintf(fd, 'пракическая частота d:%f\n',prac_d)

mfprintf(fd,'теоретичская частота a:%f\n',teor_a)
mfprintf(fd,'теоретичская частота b:%f\n',teor_b)
mfprintf(fd,'теоретичская частота c:%f\n',teor_c)
mfprintf(fd,'теоретичская частота d:%f\n',teor_d)

endfunction
    [a,b,c,d]=fun(900,0.03,0.19,0.16)
mclose(fd);// Закрываем файл после использования
