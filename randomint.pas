program randomint;
uses crt;
var
   n, max : integer;
   code   : integer;
   ch     : char;
begin
   clrscr;
   Val(ParamStr(1), max, code);
   randomize;
   n := random(max);
   writeln(n);
   ch := readkey;
end.
