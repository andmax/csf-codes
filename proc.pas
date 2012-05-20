program proc;
uses crt;
var
   ch : char;
   
Procedure EscreveNum(n: integer);
begin
   writeln('---------------------');
   writeln('Resultado eh: ', n);
   writeln('---------------------');
end;

begin 
   clrscr;
   EscreveNum(2);
   ch := readkey;
end.

{ escrever tres numeros de resultado: 1, 2 e 3 }
{ fazer um loop para escrever de 1 a 10 como resultados }
{ (p/casa) fazer um loop para pedir dois inteiros e escrever a soma
deles }
