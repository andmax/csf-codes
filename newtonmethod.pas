program newtonmethod;
uses crt;
var
   code    : integer;
   n, r, e : real;
   ch      : char;
begin 
   clrscr;
   Val(ParamStr(1), n, code);
   e := 1e-15;
   r := n;
   while (abs(r - n/r) > e * r) do
   begin
      r := ( n / r + r ) / 2;
   end;
   writeln(r);
   ch := readkey;
end.

{ trocar e por 0.01 e testar computar a raiz quadrada de 4 }
{ escrever valor computado pela função Sqrt }
{ trocar while por repeat }
