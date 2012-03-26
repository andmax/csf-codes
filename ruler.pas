program ruler;
uses crt;
var
   ruler1 : string;
   ruler2 : string;
   ruler3 : string;
   ruler4 : string;
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
