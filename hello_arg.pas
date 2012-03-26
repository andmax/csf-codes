program hello_arg;
uses crt;
var
   ch	   : char;
begin 
   clrscr;
   writeln('Hello ', ParamStr(1));
   ch := readkey;
end.
