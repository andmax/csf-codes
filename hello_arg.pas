program hello_arg;
uses crt;
var
   ch	   : char;
begin 
   clrscr;
   writeln('Hello ', ParamStr(1));
   ch := readkey;
end.

{
   for Counter := 0 to ParamCount do
      WriteLn ('Command line argument #', Counter, ' is ''',
	       ParamStr (Counter), '''');
}
