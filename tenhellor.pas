program tenhellor;
uses crt;
var
   i  : integer;
   ch : char;
begin
   clrscr;
   writeln('1o. Hello');
   writeln('2o. Hello');
   i := 2;
   repeat
      inc(i);
      writeln(i, 'o. Hello');
   until (i = 10);
   ch := readkey;
end.

{ entrar com o numero de hellos por argumento }
