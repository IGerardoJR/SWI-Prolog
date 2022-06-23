/*Escriba un programa en Prolog que ayude a los dueños
de gatos y perros distinguir las caracteristicas generales
de cada una de sus mascotas. Debera generar al menos 10 hechos
además una regla que permita determinar las caracteristicas de 
la mascota.

Caracteristicas que venian ya para añadir :
    - Tipo.
    - Nombre.
    - Color.
    - Manchas.

Implemetar algunas otras.

ejemplo :
•  El gato llamado Bigotes tiene ojos amarillos
 y manchas cafés.

•  El perro llamado Lucas tiene ojos azules y manchas blancas.
*/

%% declaramos la regla
car:-
%%-------------------------------------------------------------------------------------------------------------------------------------
    %% Bienvenida al programa 
    write('Developed By Team Dinamita © 2022 - 2999'),nl,
    write('Programa para determinar las caracteristicas de tu perro o gato'),nl,   
    write('Nota importante: Toda respuesta a introducir, ponerla dentro de "" para que el programa pueda leerla correctamente ' ),nl,
    nl,  
    write(' Para empezar el programa  teclea : "C" '),nl,
    write(' Para terminar el programa teclea : "N" '),nl,
    read(Empz),nl,
%%-------------------------------------------------------------------------------------------------------------------------------------
    %% emmpezamos a validar la opcion leida
    %% si la opcion es igual a C entrara al siguiente if.    
     (Empz=:="C"
        ->
        %% Hacemos que el programa se repita mientras que Empz sea igual a "C"
        repeat,
        write('¿ Que tipo de mascota tienes ? (perro/gato) : '),nl,
        read(Tipo),

        %% Validamos el tipo de mascota que tiene el dueños
        %% para esta problematica, solo pueden ser aceptados perros o gatos.
        %% En este primer if entrara si el tipo de animal es "perro"
        ( Tipo == "perro"
                ->
        write('¿ Cual es el nombre de tu mascota ? :'),nl,
        read(Nombre),nl,
        write('¿ Que color de ojos tiene tu mascota ? : '),nl,
        read(Color),nl,
        write('¿ Color manchas (en caso de no tener poner "sin color") ? '),nl,
        read(Manchas),nl,
        write('¿ Le gustan las salidas al parque ? (si/no).'),nl,
        read(Parque),nl,
        write('¿ Suele sufrir accidentes constantemente ?.'),nl,
        read(Accidentes),nl,
        write('¿ Es miedoso a las alturas? (si/no) ?.'),nl,
        read(Alturas),nl,
        write('¿ Es agresivo ante los desconocidos ?'),nl,
        read(Agresivo),nl,
        write(' ¿ Le gusta comer demasiado ? '),nl,
        read(Comer),nl,
        write('¿ Le gusta dormir mucho ? '),nl,
        read(Dormir),nl
        ;
%%-------------------------------------------------------------------------------------------------------------------------------------        
        %% Aplicamos el operador OR por si el tipo de animal es igual a "gato"
        Tipo == "gato"
            ->
        write('¿ Cual es el nombre de tu mascota ? :'),nl,
        read(Nombre),nl,
        write('¿ Que color de ojos tiene tu mascota ? : '),nl,
        read(Color),nl,
        write('¿ Color manchas (en caso de no tener poner "sin color") ? '),nl,
        read(Manchas),nl,
        write('¿ Le gustan las salidas al parque ? (si/no).'),nl,
        read(Parque),nl,
        write('¿ Suele sufrir accidentes constantemente ?.'),nl,
        read(Accidentes),nl,
        write('¿ Es miedoso a las alturas? (si/no) ?.'),nl,
        read(Alturas),nl,
        write('¿ Es agresivo ante los desconocidos ?'),nl,
        read(Agresivo),nl,
        write(' ¿ Le gusta comer demasiado ? '),nl,
        read(Comer),nl,
        write('¿ Le gusta dormir mucho ? '),nl,
        read(Dormir),nl
        ),
%%-------------------------------------------------------------------------------------------------------------------------------------
        %% zona de validaciones
        %% Se validara cada campo en donde se le realize una pregunta al dueño para las diferentes alternativas que
        %% se puedan presentar.   
        %% Validaremos if salidas al parque  
        ( Parque == "si"
            ->  
            P = " le gusta salir al parque "
        ;
            Parque == "no"->     
            P = " no le gusta salir al parque" 
        ),

        %% Empieza validacion de if sobre  accidentes 
        ( Accidentes = "si" 
            ->
            Acc = " suele sufrir accidentes constantemente"
            ;
            Accidentes == "no" ->
            Acc = " no suele sufrir casi nunca accidentes"
        ),

         %% Empieza validacion de if sobre la altura 
        ( Alturas = "si" 
            ->
            Alt = " Suele tener miedo a las alturas"
            ;
            Alturas == "no" ->
            Alt = " No le suele tener miedo a las alturas"
        ),

         %% Empieza validacion de if sobre la agresividad
        ( Agresivo == "si" 
            ->
            Agr = " suele ser agresivo con gente que no conoce "
            ;
            Agresivo == "no" ->
            Agr = " suele ser amigable con casi todos "
        ),

         %% Empieza validacion de if sobre la cantidad de comida
        ( Comer = "si" 
            ->
            Com = " se relaja comiendo demasiado "
            ;
            Comer == "no" ->
            Com = " no suele comer mucho "
        ),

         %% Empieza validacion de if sobre si le gusta o no dormir.
        ( Dormir = "si" 
            ->
            Dor = " le gusta dormir mucho "
            ;
            Dormir == "no" ->
            Dor = " casi no le gusta dormir "
        ),
%%-------------------------------------------------------------------------------------------------------------------------------------
       %% Empezamos a formular el mensaje para el usuario final
       %% Recopilamos todos los datos que capturamos al inicio y ya validados atraves de los ifs anteriores.
       write('El '),write(Tipo),write(' llamado '),write(Nombre),write(' tiene ojos color '),write(Color),
       write(' y manchas '),write(Manchas),
       write(', a '),write(Nombre),write(P),
       write(', '),write(Acc),write('.'),write(Alt),write(', '),write(Agr),write(', '),write(Com),
       write(' y '),write(Dor),
%%-------------------------------------------------------------------------------------------------------------------------------------
        %% Pregunta al usuario sobre si desea continuar en el programa.
        %% En caso de que responda "N", el programa saldra al prompt usando la funcion de prolog "abort".        
        nl,
        write('¿ Deseas seguir en el programa (S/N) : '),nl,
        read(Cont),
        ( Cont == "N" 
            ->
            abort
        )
%%-------------------------------------------------------------------------------------------------------------------------------------        
        %% Similar al punto anterior cuando al final se le pregunta al usuario si desea continuar o salir del programa
        %% Solo que aqui esa parte se valida poco despues del inicio, es decir, antes de que entre los otros ifs.
        ;
        (Empz == "N"
        ->
           abort
        )
    ).

