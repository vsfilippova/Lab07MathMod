model Lab07MathMod
// Вариант 55
parameter Real N =1550; //Объем аудитории
parameter Real x0 =8; //Количество людей, знающих о товаре в начальный момент времени

Real n (start=x0); //Количество людей, знающих о товаре 

function k //Функция, отвечающая за платную рекламу
input Real t;
output Real res;
 
algorithm
//res:=0.58; // 1 случай
//res:=0.000058; // 2 случай
res:=0.58*t;// 3 случай 

end k;

function p //Функция, описывающая сарафанное радио
input Real t;
output Real res;
 
algorithm
//res:=0.00008; // 1 случай
//res:=0.8; // 2 случай
res:= 0.38*t; // 3 случай
end p;

equation
der(n) = (k(time)+p(time)*n)*(N-n);
end Lab07MathMod;
