program intops;
uses crt;
var
   a, b, p, q, r : integer;
   code          : integer;
   ch            : char;
begin 
   clrscr;
   Val(ParamStr(1), a, code);
   Val(ParamStr(2), b, code);
   p := a * b;
   q := a div b;
   r := a mod b;
   writeln(a, ' * ', b, ' = ', p);
   writeln(a, ' / ', b, ' = ', q);
   writeln(a, ' % ', b, ' = ', r);
   writeln(a, ' = ', q, ' * ', b, ' + ', r);
   ch := readkey;
end.

