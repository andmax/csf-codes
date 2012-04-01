program tenhellow;
uses crt;
var
   i  : integer;
   ch : char;
begin
   clrscr;
   writeln('1o. Hello');
   writeln('2o. Hello');
   writeln('3o. Hello');
   i := 4;
   while (i <= 10) do
   begin
      writeln(i, 'o. Hello');
      inc(i);
   end;
   ch := readkey;
end.

{ +5 Hellos? }
{ Substituir inc(i) }
