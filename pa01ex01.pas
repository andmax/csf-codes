program pa01ex01; { parte 1 exercicio 01 }
uses crt;
var
   n, c : integer;
   r    : real;
   ch   : char;
begin 
   clrscr;
   Val(ParamStr(1), n, c);
   r := Sqrt(n);
   writeln('Raiz quadrada de ', n, ' eh ', r:4:2);
   ch := readkey;
end.
