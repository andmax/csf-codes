program pa03ex08;
uses crt;
var
   a    : Array[2..5] of Array[0..7] of integer;
   f    : Text;
   i, j : integer;
   ch   : char;

Procedure PreencheArray;
begin { preenche array com as potencias de 2 a 5 }
   for j := 2 to 5 do
   begin
      a[j][0] := 1;
      for i := 1 to 7 do
         a[j][i] := a[j][i-1] * j;
   end;
end;

Procedure EscreveArray;
begin { escreve array a no arquivo f }
   for j := 2 to 5 do
   begin
      write(f, a[j][0]);
      for i := 1 to 7 do
         write(f, ' ', a[j][i]);
      writeln(f, '');
   end;
end;

begin 
   clrscr;
   assign(f, 'array.txt');
   rewrite(f);
   PreencheArray;
   EscreveArray;
   close(f);
   writeln('Arquivo array.txt escrito com sucesso.');
   ch := readkey;
end.
