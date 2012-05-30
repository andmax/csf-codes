program pa03ex09;
uses crt;
type
   matriz = Array[1..10] of Array[1..10] of real;
   
var
   f     : File of real;
   m, ml : matriz;
   i, j  : integer;
   ch    : char;

Procedure EscreveMatriz(argm : matriz);
var
   i, j : integer;
begin { escreve a matriz argm }
   for i := 1 to 10 do
   begin
      write(argm[i][1]:0:1);
      for j := 2 to 10 do
         write(' ', argm[i][j]:0:1);
      writeln('');
   end;
end;

{ argumento com var permite que o procedimento altere seu valor }
Procedure TranspoeMatriz(var argm : matriz);
var
   t    : real;
   i, j : integer;
begin { transpoe matriz argm }
   for i := 1 to 10 do
      for j := i to 10 do
      begin
         t := argm[j][i];
         argm[j][i] := argm[i][j];
         argm[i][j] := t;
      end;
end;

Procedure EscreveMatrizArquivo;
var
   i, j : integer;
begin { escreve a matriz m no arquivo f }
   for i := 1 to 10 do
      for j := 1 to 10 do
         write(f, m[i][j]);
end;

Procedure LeMatrizArquivo;
var
   i, j : integer;
begin { le a matriz m do arquivo f }
   for i := 1 to 10 do
      for j := 1 to 10 do
         read(f, ml[i][j]);
end;

begin
   clrscr;
   { preenchendo matriz m com valores quaisquer }
   for i := 1 to 10 do
      for j := 1 to 10 do
         m[i][j] := (i-1) + (j-1)/10.0;
   writeln('Matrix:');
   EscreveMatriz(m);
   TranspoeMatriz(m);
   writeln('Matrix Transposta:');
   EscreveMatriz(m);
   assign(f, 'matriz.bin');
   { usando arquivo f para escrita }
   rewrite(f);
   EscreveMatrizArquivo;
   close(f);
   writeln('Matrix Transposta escrita em matriz.bin com sucesso!');
   { reusando o arquivo f para leitura }
   reset(f);
   LeMatrizArquivo;
   close(f);
   writeln('Matrix lida de matriz.bin com sucesso!');
   writeln('Matrix lida:');
   EscreveMatriz(ml);
   ch := readkey;
end.
