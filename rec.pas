program rec;
uses crt;
type
   cor   = (vermelho, verde, azul);
   ponto = record
              x, y : real;
              c    : cor;
           end;    

var      
   p  : ponto;
   ch : char;

Procedure EscrevePonto;
begin
   writeln('Coordenada do ponto: ', p.x, ' ', p.y);
   writeln('Indice da cor do ponto: ', integer(p.c));
end;

begin 
   clrscr;
   p.x := 1.2;
   p.y := 3.2;
   p.c := azul;
   EscrevePonto;
   ch := readkey;
end.

{ fazer o ponto em 3D acrescentando a coordenada z ao ponto }
{ (p/casa) calcular a distancia de dois pontos dados }
