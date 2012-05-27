program arr2;
uses crt;
type
   myarray = Array[1..10] of integer;

var 
   a  : myarray;
   i  : integer;
   ch : char;

Procedure PreencheArray;
begin
   for i := 1 to 10 do
      a[i] := 11 - i;
end;

Procedure BaguncaArray;
begin
   for i := 1 to 10 do
      a[i] := a[a[i]];
end;

Procedure EscreveArray(arga: myarray);
begin
   write(arga[1]);
   for i := 2 to 10 do
      write(' ', arga[i]);
   writeln('');
end;

begin 
   clrscr;
   PreencheArray;
   BaguncaArray;
   EscreveArray(a);
   ch := readkey;
end.

{ fazer o PreencheArray na ordem e ver o que o BaguncaArray faz }
{ criar um segundo array b para receber os valores no BaguncaArray,
  escreva ambos os arrays a e b }
{ (p/casa) fazer um terceiro array de 1 a 10 de reais e preenche-lo
  com a divisao de cada elemento de a com b, alterar o EscreveArray de
  forma a conseguir escrever o terceiro array }
