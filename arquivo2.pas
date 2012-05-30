program arquivo2;
uses crt;
var
   a  : Array[0..7] of integer;
   f  : Text;
   ch : char;

Procedure PreencheArray;
var
   i : integer;
begin
   a[0] := 1;
   for i := 1 to 7 do
      a[i] := a[i-1] * 2;
end;

Procedure EscreveArray;
var
   i : integer;
begin 
   for i := 0 to 7 do
      writeln(f, a[i]);
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

{ trocar para escrever na mesma linha de array.txt }
{ usar append para continuar a escrita das potencias de 8 a 15 }
{ (p/casa) escrever as potencias de 2, 3, 4 e 5 uma em cada linha de
  array.txt depois le-lo e imprimi-lo (dica) usar procedimentos de
  exercicios anteriores }
