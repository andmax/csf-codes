program pa03ex10;
uses crt;
type
   cor     = (vermelho, verde, azul);
   ponto   = record
                x, y, z : real;
                c       : cor;
             end;       
   nomecor = String[8];

var
   p, q : ponto;
   ch   : char;
   a    : Array[1..8] of real;
   i    : integer;

Function ConverteCor(c : cor) : nomecor;
begin { converte a cor c para o seu nome}
   case c of
     vermelho : ConverteCor := 'vermelho';
     verde    : ConverteCor := 'verde';
     azul     : ConverteCor := 'azul';
   else 
      ConverteCor := '';
   end;
   
end;

Procedure EscrevePonto(p1: ponto);
begin { escreve informacoes do ponto p1 }
   writeln('Coordenada do ponto: ', p1.x:0:2, ' ', p1.y:0:2, ' ', p1.z:0:2);
   writeln('Cor do ponto: ', ConverteCor(p1.c));
end;

Function Potencia(b : real; e: integer) : real;
var
   p : real;
   i : integer;
begin { computa b elevado a e }
   p := 1;
   for i := 1 to e do
      p := p * b;
   Potencia := p;
end;        

Function Distancia(p1, p2: ponto) : real;
var
   x2, y2, z2 : real;
begin { computa a ditancia de p1 para p2 }
   x2 := Potencia(p1.x-p2.x, 2);
   y2 := Potencia(p1.y-p2.y, 2);
   z2 := Potencia(p1.z-p2.z, 2);
   Distancia := sqrt( x2 + y2 + z2 );
end;

{ argumento var para alterar o conteudo do array de reais }
Procedure ComputaPotencia(var ar : Array of real);
var
   i : integer;
begin { computa a potencia de cada elemento de ar pelo seu indice }
   { low sempre zero e high o tamanho do array menos 1 }
   for i := Low(ar) to High(ar) do
      ar[i] := Potencia(ar[i], i+1);
end;

{ array passado aberto (sem intervalo) comeca em zero }
Procedure EscreveArray(ar: Array of real);
var
   i : integer;
begin { escreve array de reais }
   write(ar[0]:0:2);
   for i := 1 to High(ar) do
      write(' ', ar[i]:0:6);
   writeln('');
end;

begin
   clrscr;
   p.x := 1.2; p.y := 3.2; p.z := -5.7; p.c := verde;
   q.x := -4.0; q.y := 8.1; q.z := 1.0; q.c := azul;
   EscrevePonto(p);
   EscrevePonto(q);
   writeln('Distancia: ', Distancia(p, q):0:4);
   p.x := 1.0; p.y := 5.1; p.z := 6.5; p.c := vermelho;
   EscrevePonto(p);
   { preenchendo array a com valores quaisquer }
   for i := 1 to 8 do
      a[i] := i/10.0;
   writeln('Array:');
   EscreveArray(a);
   ComputaPotencia(a);
   writeln('Potencias do array:');
   EscreveArray(a);
   ch := readkey;
end.
