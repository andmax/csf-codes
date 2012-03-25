program divisao;
uses crt;
var
   a,b : integer;
   ch  : char;
begin
   clrscr;
   writeln('Digite dois numeros inteiros:');
   readln(a,b);
   writeln('Dividendo: ', a);
   writeln('Divisor: ', b);
   writeln('Quociente: ', (a div b));
   writeln('Resto: ', (a mod b));
   ch := readkey;
end.
