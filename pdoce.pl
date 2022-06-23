/*
Escriba un programa en Prolog que determine la calificacion
de un trabajo de titulacion basándose en las siguientes
caracteristicas :

    1. profundidad de la investigacion.
    2. presentacion del tema.
    3. Marco teorico
    4. Metodologia 
    5. Ortografia y gramatica.
    6. calidad.
    7. Relevancia social.
    8.Implicaciones practicas.  
    9. Bibliografia
    10. Estilo.
*/

titulacion :-
    %% Los siguientes write corresponden a la pantalla de bienvenida al usuario.
   write('Developed By Team Dinamita © 2022 - 2999'),nl,
   write('Programa para calificar un trabajo de titulacion basandose en las siguientes caracteristicas'),nl,
   write('* Profundidad de la investigacion.'),nl,
   write('* Presentacion del tema.'),nl,
   write('* Marco teorico.'),nl,
   write('* Metodologia.'),nl,
   write('* Ortografia y gramatica.'),nl,
   write('* Calidad.'),nl,
   write('* Relevancia social.'),nl,
   write('* Implicaciones practicas'),nl,
   write('* Bibliografia'),nl,
   write('* Estilo'),nl,
   nl,
   write('Cada uno de estos criterios debera ser evaluado de (0-4) : '),nl,
   write(' Lista de criterios : '),nl,
   write('0. Inaceptable'),nl,
   write('1. Deficiente'),nl,
   write('2. Aceptable'),nl,
   write('3. Muy bueno'),nl,
   write('4. Excelente'),nl,
   nl,
   write('Cuando estes listo teclea "C" para iniciar la evaluacion '),nl,
    nl,
   read(Continuar), %% Lectura de opcion
 %%--------------------------------------------------------------------------------------------------------
 %% En caso de que el usuario haya teclado "C" el programa continuara y entrada al siguiente if.      
 %% Si el usuario introduce alguna otra cosa que no sea "C" el programa de prolog no continuara y se saldra. 
 (Continuar == "C" -> 
    nl,
    %%------------------------------------------------------------------------------------------------------
    %% Manda una peticion al usuario para que introduzca un numero del 0 al 4, para evaluar el primer parametro.
    write('1. Profundidad de la investigacion (0-4) :'),
    %% Lectura del numero que se almacenara en nuestra variable L. Posteriormente le daremos otro uso a este parametro.
    %% por lo que, para no sobreescribir el valor, en las siguientes lecturas se almacenaran en otras variables.
    read(L), 
    %%------------------------------------------------------------------------------------------------------
    %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
    %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
    ( L =< 4 , L >= 0
        ->    
        write('2. Presentacion del tema (0-4) : '),nl,
        read(Z),
         %%------------------------------------------------------------------------------------------------------
        %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
        %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
        ( Z =< 4 , Z >= 0
            -> 
            write('3. Marco Teorico (0-4): '),
            nl,
            read(X)
           ,
            %%------------------------------------------------------------------------------------------------------
            %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
            %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
           ( X =< 4 , X >= 0
                ->
                write('4. Metodologia (0-4): '),
                nl,
                read(C),
                 %%------------------------------------------------------------------------------------------------------
                 %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
                 %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
                ( C =< 4, C >= 0
                    ->
                    write('5. Ortografia y gramatica (0-4): '),nl,
                    read(V),
                     %%------------------------------------------------------------------------------------------------------
                      %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
                     %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
                    ( V =< 4, V >= 0
                        ->
                    write('6. Calidad (0-4): '),nl,
                    read(B),
                     %%------------------------------------------------------------------------------------------------------
                     %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
                    %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
                    ( B =< 4 , B >= 0
                        ->
                        write('7. Relevancia Social (0-4): '),nl,
                        read(N),
                        %%------------------------------------------------------------------------------------------------------
                        %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
                        %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
                        ( N =< 4 , N >= 0
                            ->
                            write('8. Implicaciones practicas (0-4): '),nl,
                            read(M),
                             %%------------------------------------------------------------------------------------------------------
                             %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
                            %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
                            ( M =< 4, M >= 0
                                ->
                                write('9. Bibliografia (0-4): '),nl,
                                read(Q),
                                 %%------------------------------------------------------------------------------------------------------
                                %% Validamos con un if que el numero anterior sea menor o igual a 4 y que sea mayor o igual a 0.
                                %% Ya que si es mayor a 4 o menor a 0 no seria valido, ya que los criterios solo van desde 0 a 4.
                                ( Q =< 4 , Q >= 0
                                    ->
                                    write('10. Estilo (0-4): '),nl,
                                    read(W),
                                    %% Hacemos la sumatoria de los valores anteriores para el veredicto final.
                                    Total is L+Z+X+C+V+B+N+M+Q+W,
                                    %% Mandamos a imprimir la puntuacion que obtuvo la persona evaluada
                                    write('La puntuacion obtenida por el trabajo fue : '),nl,
                                    %% Creamos una variable llamado "Aprobado" donde toma el valor maximo posible y lo multiplica
                                    %% por 0.70, con esto la persona a la que esten evaluando tendra que 
                                    %% obtener al menos el 70% de 40 puntos, es decir 28 puntos.
                                    Aprobado is 40 * 0.70,
                                    write(Total),
                                      %%------------------------------------------------------------------------------------------------------
                                      %% En los siguiente if compara el Total de puntos que obtuvo el evaluado con la cant de puntos minimos que 
                                      %% necesita el evaluado para poder aprobar el protocolo.
                                     %%------------------------------------------------------------------------------------------------------
                                     %% Si entra al siguiente if, es porque el total no cumple con la cantidad de puntos minimos para aprobar 
                                     %% y desplegara un mensaje triste.
                                    ( Total < Aprobado
                                        ->
                                        nl,
                                        write('La puntuacion de '),write(Total),write(' no es suficiente para aprobar el protocolo')
                                        ;
                                        %%------------------------------------------------------------------------------------------------------
                                        %% Si entra al siguiente if, es porque el total cumple o supera con la cantidad de puntos minimos para aprobar 
                                        %% y desplegara un mensaje indicandole al evaluador que el evaluado si alcanza a pasar el protocolo.
                                        (
                                            nl,
                                            Total >= Aprobado , Total =< 40
                                            ->
                                            nl,
                                            write('La puntuacion de '),write(Total),write(' alcanzo para aprobar el protocolo')
                                        )
                                    )
                                )
                            )
                        )
                    )
                    )
                )
           )
        )
    )
).