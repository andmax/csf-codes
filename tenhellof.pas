program tenhello;
uses crt;
var
   i  : integer;
   ch : char;
begin
   clrscr;
   writeln('1o. Hello');
   for i := 2 to 10 do
   begin
      writeln(i, 'o. Hello');
   end;
   ch := readkey;
end.

{ nao ter nenhum hello fora do loop }
