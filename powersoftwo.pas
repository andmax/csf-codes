program powersoftwo;
uses crt;
var
   n, v, i : integer;
   code    : integer;
   ch      : char;
begin 
   clrscr;
   Val(ParamStr(1), n, code);
   v := 1;
   i := 0;
   while (i <= n) do
   begin
      writeln(i, ' ', v);
      v := 2 * v;
      inc(i);
   end;
   ch := readkey;
end.

{ escrever 2^i = v }
{ nao incluir o valor entrado }
{ ler um int e dizer qual potencia de 2 mais proxima (pra cima) }
{ ler um int e dizer quantos bits eh necessario para representa-lo }
