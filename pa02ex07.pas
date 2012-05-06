program pa02ex07; { parte 2 exercicio 7 }
uses crt;
var
   n, v, i : integer;
   code    : integer;
   ch      : char;
begin 
   clrscr;
   Val(ParamStr(1), n, code);
   if (code > 0) then
   begin
      writeln("Argumento invalido!");
      writeln("Argumento deve ser um numero inteiro!");
      writeln("n = ", ParamStr(1));
      ch := readkey;
      Exit;
   end;
   if (n < 0) or (n > 62) then
   begin
      writeln("n negativo ou muito grande!");
      writeln("n = ", n);
      ch := readkey;
      Exit;
   end;
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
