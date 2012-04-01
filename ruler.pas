program ruler;
uses crt;
var
   ruler1 : string[1];
   ruler2 : string[5];
   ruler3 : string[13];
   ruler4 : string[29];
   ch	  : char;
begin
   clrscr;
   ruler1 := '1';
   ruler2 := ruler1 + ' 2 ' + ruler1;
   ruler3 := ruler2 + ' 3 ' + ruler2;
   ruler4 := ruler3 + ' 4 ' + ruler3;
   writeln(ruler1);
   writeln(ruler2);
   writeln(ruler3);
   writeln(ruler4);
   ch := readkey;
end.
