program pa03ex06;
uses crt;
type
   arreais = Array[1..10] of real;

var 
   a, b : Array[1..10] of integer;
   c    : arreais;
   i    : integer;
   ch   : char;

Procedure PreencheArray;
begin { preenche array a com os indices na ordem inversa }
   for i := 1 to 10 do
      a[i] := 11 - i;
end;

Procedure BaguncaArray;
begin { preenche o array b com elementos do array a }
   for i := 1 to 10 do
      b[i] := a[a[i]];
end;

Procedure PreencheDivisao;
begin { preenche array c com a divisao de cada elemento de a com b }
   for i := 1 to 10 do
      c[i] := real(a[i]) / real(b[i]);
end;

Procedure EscreveArray(arga: arreais);
begin { escreve apenas array de reais }
   write(arga[1]:0:2);
   for i := 2 to 10 do
      write(' ', arga[i]:0:2);
   writeln('');
end;

begin 
   clrscr;
   PreencheArray;
   BaguncaArray;
   PreencheDivisao;
   EscreveArray(c);
   ch := readkey;
end.
