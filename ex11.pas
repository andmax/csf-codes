program ex11;
uses crt;
var
   a, b, c, r : integer;
   ch         : char;
begin
   clrscr;
   randomize;
   Val(ParamStr(1), a, c);
   Val(ParamStr(2), b, c);
   r := random(b) + a;
   writeln('Aleatorio em [', a, ', ', b, '] :- ', r);
   ch := readkey;
end.
