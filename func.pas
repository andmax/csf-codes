program func;
uses crt;
var
   ch : char;

Procedure EscreveNum(n: real);
begin
   writeln('---------------------');
   writeln('Resultado eh: ', n);
   writeln('---------------------');
end;

Function Area(lado : real) : real;
begin
   Area := lado * lado * Sqrt(3) / 4.0;
end;

begin 
   clrscr;
   EscreveNum(Area(1.5));
   ch := readkey;
end.

{ pedir base e altura e escrever a area do triangulo }
{ (p/casa) fazer o exercicio acima em um loop }
