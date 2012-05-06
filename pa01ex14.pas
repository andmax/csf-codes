program pa01ex14; { parte 1 exercicio 14 }
uses crt;
var
   d, m, c    : integer;
   no_periodo : boolean;
   ch         : char;
begin
   clrscr;
   randomize;
   Val(ParamStr(1), d, c);
   Val(ParamStr(2), m, c);
   no_periodo := (m = 3) and (d >= 5) and (d <= 31);
   no_periodo := no_periodo or ((m = 4) and (d >= 1) and (d <= 30));
   no_periodo := no_periodo or ((m = 5) and (d >= 1) and (d <= 31));
   no_periodo := no_periodo or ((m = 6) and (d >= 1) and (d <= 30));
   no_periodo := no_periodo or ((m = 7) and (d <= 2));
   writeln(no_periodo);
   ch := readkey;
end.
