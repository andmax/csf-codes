program condcase;
uses crt;
var
   ch : char;

Procedure Pergunta(p : integer);
begin
   Case p of
     1 : writeln('Qual a sua idade?');
     2 : writeln('Qual o seu endereco?');
     3 : writeln('Qual o seu nome?');
     4 : writeln('Qual o nome da sua mae?');
   else
        writeln('Nenhuma pergunta');
   end;
end;

begin 
   clrscr;
   Pergunta(4);
   ch := readkey;
end.

{ fazer um loop para fazer todas as perguntas }
{ (p/casa) fazer um procedimento EscrevePergunta que recebe uma string
e escreve 'Qual ' + string passada como argumento }
