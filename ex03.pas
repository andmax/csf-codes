program ex03;
uses crt;
var
   a, b, c : integer;
   ch      : char;
begin 
   clrscr;
   writeln('Entre com 3 numeros:');
   readln(a, b, c);
   writeln('Um deles eh maior ou igual a soma dos outros dois?');
   writeln((a >= (b+c)) or (b >= (a+c)) or (c >= (a+b)));
   ch := readkey;
end.
