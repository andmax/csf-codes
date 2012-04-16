program factors;
uses crt;
var
   n, c, i, d : integer;
   ch         : char;
begin 
   clrscr;
   Val(ParamStr(1), n, c);
   d := n div 2;
   for i := 2 to d do
   begin
      while (n mod i = 0) do
      begin
         n := n div i;
         write(i, ' ');
      end;
      d := n div i;
   end;
   if (n > 1) then
   begin
      write(n);
   end;
   writeln('');
   ch := readkey;
end.

{ imprimir quando o numero for primo }
