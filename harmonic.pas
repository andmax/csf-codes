program harmonic;
uses crt;
var
   n, i, c : integer;
   sum     : real;
   ch      : char;
begin 
   clrscr;
   Val(ParamStr(1), n, c);
   sum := 0.0;
   for i := 1 to n do
   begin
      sum := sum + 1.0 / i;
   end;
   writeln(sum);
   ch := readkey;
end.

{ trocar / por div }
{ escrever todos os valores }
