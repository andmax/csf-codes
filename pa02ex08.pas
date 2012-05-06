program pa02ex08; { parte 2 exercicio 8 }
uses crt;
var
   n, c, i, d : integer;
   repetidos  : integer;
   ch         : char;
begin 
   clrscr;
   Val(ParamStr(1), n, c);
   d := n div 2;
   for i := 2 to d do
   begin
      repetidos := 0;
      while (n mod i = 0) do
      begin
         n := n div i;
         if (repetidos = 0) then
            write(i, ' ');
         inc(repetidos);
      end;
      if (repetidos > 1) then
         write('* ', repetidos, ' ');
      d := n div i;
   end;
   if (n > 1) then
   begin
      write(n);
   end;
   writeln('');
   ch := readkey;
end.
