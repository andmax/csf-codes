program enum;
uses crt;
type
   cor = (vermelho, verde, azul);

var
   varcor : cor;
   ch     : char;

Procedure EscreveCor(argcor : cor) ;
begin
   Case argcor of
     vermelho : writeln('Cor vermelha');
     verde    : writeln('Cor verde');
     azul     : writeln('Cor azul');
   end;
end;

begin 
   clrscr;
   varcor := vermelho;
   EscreveCor(varcor);
   writeln(integer(varcor));
   ch := readkey;
end.

{ acrescentar a cor branca e preta no tipo cor }
{ escrever cor inexistente no caso de cor nao encontrada }
{ (p/casa) pedir um inteiro e escrever a cor correspondente }
