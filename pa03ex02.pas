program pa03ex02;
uses crt;
var
   b, a : real;

Procedure EscreveNum(n: real);
begin
   writeln('---------------------');
   writeln('Resultado eh: ', n:0:2);
   writeln('---------------------');
end;

Function Area(base, altura : real) : real;
begin { calcula a area de um triangulo qualquer }
   Area := base * altura / 2.0;
end;

begin
   clrscr;
   while (True) do
   begin
      writeln('Entre com a base e a altura do triangulo (0 0 para sair):');
      readln(b, a);
      if (a = 0.0) and (b = 0.0) then break;
      writeln('Calculando area...');
      EscreveNum(Area(b, a));
   end;
end.
