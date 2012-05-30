program pa03ex03;
uses crt;
var
   ch : char;

Procedure EscrevePergunta(s : string);
begin { escreve qual + uma string de pergunta }
   writeln('Qual ', s);
end;

Procedure Pergunta(p       : integer);
begin
   Case p of
     1 : EscrevePergunta('a sua idade?');
     2 : EscrevePergunta('o seu endereco?');
     3 : EscrevePergunta('o seu nome?');
     4 : EscrevePergunta('o nome da sua mae?');
   else
      writeln('Nenhuma pergunta');
   end;
end;

begin 
   clrscr;
   Pergunta(1);
   Pergunta(2);
   Pergunta(3);
   Pergunta(4);
   Pergunta(5);
   ch := readkey;
end.
