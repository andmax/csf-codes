program pa01ex13; { parte 1 exercicio 13 }
uses crt;
var
   x, v, t, g, p : real;
   code          : integer;
   ch            : char;
begin
   clrscr;
   randomize;
   Val(ParamStr(1), x, code);
   Val(ParamStr(2), v, code);
   Val(ParamStr(3), t, code);
   g := 9.78033;
   p := x + v * t + g * t * t / 2.0;
   writeln('Nova posicao: ', p:4:4);
   ch := readkey;
end.
