program quadratic;
uses crt;
var
   b, c, d : real;
   code    : integer;
   ch      : char;
begin 
   clrscr;
   Val(ParamStr(1), b, code);
   Val(ParamStr(2), c, code);
   { x^2 + bx + c = 0 }
   d := b * b - 4 * c;
   d := Sqrt(d);
   writeln((-b + d)/2.0);
   writeln((-b - d)/2.0);
   ch := readkey;
end.

