program randomint;
uses crt;
var
   n, max : integer;
   code   : integer;
   r      : real;
   ch     : char;
begin
   clrscr;
   Val(ParamStr(1), max, code);
   n := random(max);
   writeln(n);
   ch := readkey;
end.
