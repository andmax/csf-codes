program flipcoin;
uses crt;
var
   n  : integer;
   ch : char;
begin
   clrscr;
   randomize;
   n := random(2);
   if (n = 0) then
   begin
      writeln("Cara");
   end
   else
   begin
      writeln("Coroa");
   end;
   ch := readkey;
end.

{ Moeda que cai 2x mais caras do que coroas? }
