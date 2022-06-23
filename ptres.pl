% 3. Escribe un programa en Prolog que lea desde el 
% prompt de prolog un numero y determine su cubo.

%% creamos nuestra regla que es en si la funcionalidad del programa
leer_num:-
    write('Developed By Team Dinamita © 2022 - 2999'),nl,
    write('Programa para obtener el cubo de un numero'),nl,
    nl,
    write('Escribe un numero : '),
    %% usamos la funcion read, para leer algun valor en el prompt
    read(X),
    %% creamos nuestra variable Res, la cual le indicamos que tomara el valor
    %% que leyo en X y lo elevara al cubo.
    Res is X^3,
    %% mandamos a imprimir resultados
    write('El cubo de '),write(X), write(' es : '), write(Res).
   