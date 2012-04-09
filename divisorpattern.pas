program divisorpattern;
uses crt;
var
   n, i, j : integer;
   code    : integer;
   ch      : char;
begin 
   clrscr;
   Val(ParamStr(1), n, code);
   for i := 1 to n do
   begin
      for j := 1 to n do
      begin
         if ( ((i mod j) = 0) or ((j mod i) = 0)) then
         begin
            write('* ');
         end
         else
         begin
            write('  ');
         end;
      end;
      writeln(i);
   end;
   ch := readkey;
end.

{ trocar * por x ; or por and }
{ escrever a ultima linha com o numero das colunas }
