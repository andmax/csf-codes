program arr1;
uses crt;
var
   a  : Array[0..10] of integer;
   j  : integer;
   ch : char;

Procedure PreencheArray;
var
   i : integer;
begin
   a[0] := 1;
   for i := 1 to 10 do
      a[i] := a[i-1] * 2;
end;

begin 
   clrscr;
   PreencheArray;
   write(a[0]);
   for j := 1 to 10 do
      write(' ', a[j]);
   writeln('');
   ch := readkey;
end.

{ trocar para as potencias de 3 }
{ entrar com tamanho do array como argumento (considerar maximo de 20) }
{ (p/casa) trocar para um array de array onde cada array tem as
  potencias de 2, 3, 4 e 5 }
