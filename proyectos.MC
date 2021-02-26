program ejercicio1pas;

uses Crt;

var
  numero: Integer;
 

procedure funcion1(var numero:Integer);

 var actual, anterior, auxiliar: Integer;

begin 

clrscr();
    actual := 1;
    anterior := 1;
    
    while actual < numero do
    begin
      auxiliar := actual;
      actual := actual + anterior;
      anterior := auxiliar;
    end;
    
    if (actual = numero) or (numero = 0) then
       WriteLn('El numero si pertenece a la secuencia fibonacci')
    else
       WriteLn('El numero no pertenece a la secuencia fibonacci')
    
end;

begin
       WriteLn('Ingrese un numero');
       ReadLn(numero);
       funcion1(numero);
end.





program Ejercicio2pas;
uses crt;

var

numero:Integer;

begin

clrscr;

  writeln ('Hola, ¿qué tal? Por favor ingresa un numero');
  readln(numero);
clrscr;


    if numero MOD 2=0 then
    begin 
    TextColor(yellow); writeln ('El número' ,numero,' es divisible entre 2'+#10);
    end;
    
    if numero MOD 3=0 then
    begin 
    TextColor(blue); writeln ('El número' ,numero, ' es divisible entre 3'+#10);
    end;
    
    if numero MOD 5=0 then
    begin 
    TextColor(red); write ('El número',numero, ' es divisible entre 5'+#10);
    end;
   
    if numero MOD 7=0 then
    begin 
    TextColor(green); writeln ('El número' ,numero, ' es divisible entre 7'+#10);
    end;
    
    if numero MOD 13=0 then
    begin 
    TextColor(brown); writeln ('El número' ,numero, ' es divisible entre 13'+#10);
    end;
    

end.




program ejercicio3pas; 

uses
  crt;


const
  mayormenor = 4;


var
  num, num1: array [1..4] of integer;
  ab, a, b: integer;


begin
  clrscr;
  ab := mayormenor;
  for a := 1 to mayormenor do 
    begin
    TextColor(yellow);
      write('Hola, por favor ingresa un número');
      write(' (', ab, ' Restante');
      if ab > 1 then
        writeln('s)')  
      else 
      
        writeln(')');
      readln(num[a]);
      ab := ab - 1;
    end;
  for a := 1 to mayormenor do 
    for b := 1 to mayormenor do begin
      if num[a] > num[b] then if num[a] > num1[1] then
        num1[1] := num[a];
      if num[a] < num[b] then if num[a] < num1[4] then 
        num1[4] :=num[a];
       end;
  TextColor(red);
  writeln('El número mayor es: ', num1[1]);
  readln;
  writeln('El número menor es:: ', num1[4]);
  readln;
end.





program funcion4;
uses crt;
var
eleccion:integer;
numero:array[1..3] of integer;
divisiones:array[1..3] of integer;
verificacion:array[1..3] of integer;
begin
   begin
   writeln('Ingresa un numero');
   readln(eleccion);
   end;
   begin
   numero[1]:= 2;
   divisiones[1]:= eleccion div numero[1];
   verificacion[1]:= eleccion mod numero[1];
   numero[2]:= 3;
   divisiones[2]:= eleccion div numero[2];
   verificacion[2]:= eleccion mod numero[2];
   numero[3]:= 5;
   divisiones[3]:= eleccion div numero[3];
   verificacion[3]:= eleccion mod numero[3];
   end;
   begin
    if (divisiones[1]<>0) and (verificacion[1]=0) then
       writeln('Es potencia de 2')
   else if (divisiones[2]<>0) and (verificacion[2]=0) then
       writeln('Es potencia de 3')
   else   if (divisiones[3]<>0) and (verificacion[3]=0) then
       writeln('Es potencia de 5')
   else
    writeln('No es potencia de ninguno')
   end;
end.
