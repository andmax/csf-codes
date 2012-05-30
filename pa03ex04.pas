program pa03ex04;
uses crt;
type
   cor   = (vermelho, verde, azul);
   ponto = record
              x, y, z : real;
              c       : cor;
           end;

var
   p, q : ponto;
   ch   : char;

Procedure EscrevePonto(p1 : ponto);
begin { escreve informacoes do ponto p1 }
   writeln('Coordenada do ponto: ', p1.x:0:2, ' ', p1.y:0:2, ' ', p1.z:0:2);
   writeln('Indice da cor do ponto: ', integer(p1.c));
end;

Function quad(x : real) : real;
begin { computa o quadrado de x }
   quad := x * x;
end;

Function Distancia(p1, p2: ponto) : real;
begin { computa a ditancia de p1 para p2 }
   Distancia := sqrt( quad(p1.x-p2.x) + quad(p1.y-p2.y) + quad(p1.z-p2.z) );
end;

begin
   clrscr;
   p.x := 1.2; p.y := 3.2; p.z := -5.7; p.c := verde;
   q.x := -4.0; q.y := 8.1; q.z := 1.0; q.c := azul;
   EscrevePonto(p);
   EscrevePonto(q);
   writeln('Distancia: ', Distancia(p, q):0:2);
   ch := readkey;
end.
