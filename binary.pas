program binary;
uses crt;
var
   n, v, c, r : integer;
   ch         : char;
begin 
   clrscr;
   Val(ParamStr(1), n, c);
   v := 1;
   while (v <= N/2) do
      v := 2 * v;
   r := N;
   while (v > 0) do
   begin
      if (r < v) then
      begin
         write('0');
      end
      else
      begin
         write('1');
         r := r - v;
      end;
      v := v div 2;
   end;
   writeln('');
   ch := readkey;
end.

{ mudar para o algoritmo dado em sala usando concatenacao de strings }
