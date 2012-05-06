program pa02ex02; { parte 2 exercicio 2 }
uses crt;
var
   b, c, d : real;
   code    : integer;
   ch      : char;
begin 
   clrscr;
   Val(ParamStr(1), b, code);
   Val(ParamStr(2), c, code);
   if (code > 0) then
   begin
      writeln("Argumentos invalidos!");
      writeln("Os 2 argumentos devem ser numeros reais!");
      writeln("b = ", ParamStr(1), " c = ", ParamStr(2));
      ch := readkey;
      Exit;
   end;
   { x^2 + bx + c = 0 }
   d := b * b - 4 * c;
   if (d < 0) then
   begin
      writeln("Discriminante negativo!");
      ch := readkey;
      Exit;
   end;
   d := Sqrt(d);
   writeln((-b + d)/2.0);
   writeln((-b - d)/2.0);
   ch := readkey;
end.
