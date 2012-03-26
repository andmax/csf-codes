program leapyear;
uses crt;
var
   ano  : integer;
   ebs  : boolean; { eh ano bissexto? }
   code : integer;
   a, b : boolean;
   f    : boolean;
   ch   : char;
begin 
   clrscr;
   Val(ParamStr(1), ano, code);
   ebs := (ano mod 4 = 0);
   ebs := ebs and (ano mod 100 <> 0);
   ebs := ebs or (ano mod 400 = 0);
   writeln(ebs);
   ch := readkey;
end.
