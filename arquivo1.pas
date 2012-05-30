program arquivo1;
uses crt;
var
   f     : Text;
   texto : string[255];
   ch    : char;

Procedure EscreveArquivo;
begin
   repeat
      readln(f, texto);
      writeln(texto);
   until Eof(f);
end;

begin 
   clrscr;
   assign(f, 'arquivo1.pas');
   reset(f);
   EscreveArquivo;
   close(f);
   ch := readkey;
end.

{ alterar para escrever o codigo arr1.pas }
{ alterar EscreveArquivo para escrever o numero da linha em
  cada linha de codigo impressa }
{ (p/casa) alterar para escrever ambos os codigos hello.pas e
  hello_arg.pas }
