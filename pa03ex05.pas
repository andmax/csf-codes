program pa03ex05;
uses crt;
var
   a    : Array[2..5] of Array[0..10] of integer;
   i, j : integer;
   ch   : char;

Procedure PreencheArray;
var
   i, j : integer;
begin { preenche array com as potencias de 2 a 5 }
   for j := 2 to 5 do
   begin
      a[j][0] := 1;
      for i := 1 to 10 do
         a[j][i] := a[j][i-1] * j;
   end;
end;

begin 
   clrscr;
   PreencheArray;
   for j := 2 to 5 do
   begin
      write(a[j][0]);
      for i := 1 to 10 do
         write(' ', a[j][i]);
      writeln('');
   end;
   ch := readkey;
end.
