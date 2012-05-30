program pa03ex07;
uses crt;
var
   f1, f2 : Text;
   texto  : string[255];
   ch     : char;

{ arquivos sempre devem ser passados como argumentos variaveis: var }
Procedure EscreveArquivo(var f : Text);
begin { escreve o conteudo do arquivo f }
   repeat
      readln(f, texto);
      writeln(texto);
   until Eof(f);
end;

begin 
   clrscr;
   assign(f1, 'hello.pas');
   assign(f2, 'hello_arg.pas');
   reset(f1);
   reset(f2);
   EscreveArquivo(f1);
   EscreveArquivo(f2);
   close(f1);
   close(f2);
   ch := readkey;
end.
