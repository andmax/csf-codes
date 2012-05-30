program pa03ex1;
uses crt;
var
   a, b : integer;
   
Procedure EscreveNum(n: integer);
begin
   writeln('---------------------');
   writeln('Resultado eh: ', n);
   writeln('---------------------');
end;

begin 
   clrscr;
   while (True) do
   begin { loop sem parar }
      writeln('Escreva dois inteiros (0 0 para sair):');
      readln(a, b);
      if (a = 0) and (b = 0) then
         break; { soh para aqui }
      writeln('Somando...');
      EscreveNum(a+b);
   end;
end.
