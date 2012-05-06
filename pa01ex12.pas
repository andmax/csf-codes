program pa01ex12; { parte 1 exercicio 12 }
uses crt;
var
   d1, d2 : integer;
   ch     : char;
begin
   clrscr;
   randomize;
   d1 := random(6) + 1;
   d2 := random(6) + 1;
   writeln('A soma do lance de dados: ', d1, ' e ', d2, ' eh: ', d1+d2);
   ch := readkey;
end.
