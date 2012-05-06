program pa02ex01; { parte 2 exercicio 1 }
uses crt;
var
   a, b, c, code : integer;
   igual         : boolean;
   ch            : char;
begin
   clrscr;
   randomize;
   Val(ParamStr(1), a, code);
   Val(ParamStr(2), b, code);
   Val(ParamStr(3), c, code);
   igual := (a = b) and (b = c);
   if igual then  writeln("Igual")
   else writeln("Diferente");
   ch := readkey;
end.
