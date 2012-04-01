program ex02;
uses crt;
var
   a, b : integer;
   ch   : char;
begin 
   clrscr;
   writeln('Entre com 2 numeros:');
   readln(a, b);
   writeln('Um divide o outro?');
   writeln((a mod b = 0) or (b mod a = 0));
   ch := readkey;
end.
