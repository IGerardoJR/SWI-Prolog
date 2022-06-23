/*
Archivo fuente :
Contiene todos los programas 1 al 12.

Nota : En el archivo fuente( este archivo hemos modificado el nombre de las reglas)
*/

%%---------------------------------------Inicio Uno-------------------------------------------------------
%% problema 1.
% Explique el hechos, reglas y objetivos
% Hechos 
color(zanahoria, anaranjado). %  Indica que una zanahoria es de color anaranjado.

% Reglas 
le_gusta(Persona, zanahoria):- vegetariano(Persona). % Una persona que le gusta la zanahoria es vegetariano
aprobado(Estudiante):- estudia_mucho(Estudiante). % Un estudiante aprobado es uno que estudia mucho 

% objetivos
%?- aprobado(X). % Estudiante o estudiantes que han aprobado
%?- imparte(profesor, Curso).


% Regla
% El enemigo de X es Y , si X odia a Y entonces X pelea con Y.
enemigos(X, Y):-  odia(X, Y), pelea(X, Y). 

%%---------------------------------------Fin Uno-------------------------------------------------------

%%---------------------------------------Inicio Segundo-------------------------------------------------------
% Traduce a Prolog las siguientes sentencias:

% write('a. Daisy lee un libro de programacion lógica del autor Rico McPato')
lector('Daisy').
autor('Rico McPato').
libro(prolog).
lee_libro(Lector, Libro, Autor):-
    lector(Lector),
    libro(Libro),
    autor(Autor), 
    nl,               
    write(Lector),write(' lee un libro de '),write(Libro),write(' del autor '),write(Autor).

% write('b. A nadie le gusta ir de compras a menos que seas mujer : ').  

ir_compras(mujer).
ir_compras(mujeres).

% write('c. ¿ A quien le gusta ir de Compras ?')

gusta :-
    write('¿ A quien le gusta ir de Compras ? : '),
    read(X),
    write('Le gusta ir de compras a : '), write(X).
   

% write('d. Daisy odia cualquier ciudad grande.').

%% Damos algunos ejemplos de ciudades grandes
grande(torreon).
grande(texas).
grande(cdmx).
grande(monterrey).
grande(jalisco).

%% por ultimo creamos una regla que en cuanto 
%% reciba el nombre de daisy enumere las ciudades grandes que odia
odia(daisy, X):- grande(X).

%%---------------------------------------Fin segundo-------------------------------------------------------

%%---------------------------------------Inicio Tercero-------------------------------------------------------
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
%%---------------------------------------Fin Tercero-------------------------------------------------------

%%---------------------------------------Inicio Cuarto-------------------------------------------------------
% 4. En las siguientes intrucciones encuentra los
% errores y explica.

odia(juan, penelope).
odia(marco, melissa).

%%El error esta en que esta usando el operador and a la hora de crear la regla
%% aunque llegaramos a usar  un or o cualquier otro operador seguira marcando error

%%odia(X, Y),odia(Y, X) :- enemigos(X, Y).

%% Psible solucion.
odia(X, Y):- enemigos(X, Y).
odia(Y, X):- enemigos(X, Y).
%%------------------------------------------------------------------------------------------------------

%% En cuanto a la regla.
%% Uno de los errores esta dentro del if, ya que en vez de hacer una comparacion
%% and entre q y r. Lo que intenta hacer es crear una regla dentro de otra regla.



%% Otro  error esta en querer invocar una regla de esa forma, ya que de esa forma 
%% parece mas como si la estuviera trantando de crear una regla.

%% Por ultimo dentro de un if se faltan operadores, tanto de comparacion como el
%% indicador sobre que hacer en caso de que entre al if, en este caso el operador ->
/*p(X):-
    (
    q(X):-r(X)-> 
    ).*/

%%---------------------------------------Fin Cuarto----------------------------------------------------------

%%---------------------------------------Inicio Quinto-------------------------------------------------------

% 5. Traduce a Prolog las siguientes sentencias

%% Hechos 
    pata(daisy).  
    pato(donald).
    rico(donald).
    sana(daisy).
    sano(donald).

 % Resumiendo tenemos :
    persona(daisy,  pata, sana).
    persona(donald, pato, sano, rico).


% Cualquiera puede ser viajero si esta sano y rico
viajero(X):- sano(X), rico(X).

% Calquiera puede ser viajar si es un viajero.
viajar(X):- viajero(X).

%% quien esta sano y rico.
sano_rico(Sano, Rico, X):- sano(X), rico(X).

%%---------------------------------------Fin Quinto----------------------------------------------------------

%%---------------------------------------Inicio Sexto-------------------------------------------------------
% Que respuestas obtienes ante las siguientes consultas?
% Hechos.
vegetariano(hugo).
vegetariano(paco).
vegetal(zanahoria).
vegetal(papa).
le_gusta(hugo, X):- vegetal(X).
ama(Y, papa):- vegetariano(Y).

%% objetivos.
%   vegetal(X). 
    %%  - Muestra en una variable X, todos los vegetales.
%   vegetal(tomate). 
    % - Muestra falso, debido a que no se encuentra en nuestra lista de vegetales.

%   vegetariano(_).
    %% Lanza solamente dos mensajes true sin mostrar mas info, debido a que estamos 
    %% trabajando con una variable anonima, si deseamos saber los nombres de los 'vegetarianos' habria que cambiar 
    %% la _ por una variable como por ejemplo X.

%   le_gusta(hugo, X).
    %% Muestra los vegetales que le gustan a hugo. Que son la zanahoria y la papa.

%   le_gusta(X, papa).
    %% muestra al vegetariano que le gusta la papa. En este caso hugo.
%   ama(X, papa).

    %% Muestra dos mensajes de True. Haciendo alucion a que 
    %% los vegetarianos hugo y paco aman las papas.
    %% no manda el nombre directamente debido a que el nombre de los vegetarianos
    %% esta en una variable X, y cuando ponemos el metodo lo usamos como Y.

%%---------------------------------------Fin Sexto----------------------------------------------------------


%%---------------------------------------Inicio Septimo-------------------------------------------------------
% Que salida tiene el siguiente objetivo si se utiliza ; ?

% Hecho 
p(a,b).
p(b,c).
p(X,Y):- p(Y,X).

%% objetivos
%?- P(X,Y)    .

/*
    Salida
X es de Y si Y es de X. 

X           Y
a encuentra b

X           Y
b encuentra c

Y           X
b encuentra a

Y           X
c encuentra b




X           Y
a encuentra b

X           Y
b encuentra c

Y           X
b encuentra a

Y           X
c encuentra b


Podremos concluir que lo que hace es: 
recorrer todas las p de izquierda a derecha , esto le toma dos vueltas.
Luego de eso ahora lo hace a la inversa empieza a buscar por la inversa, es decir, invierte la
tupla, haciendo parecer a las que antes eran Y en X. Esto tambien lo hace dos veces o dos vueltas.

*/

%%---------------------------------------Fin Septimo----------------------------------------------------------

%%---------------------------------------Inicio Octavo-------------------------------------------------------

%% Hechos
estudia(hugo,plf).
estudia(paco,plf).
estudia(donald,bigdata).
estudia(daisy,gps).
imparte(luis,plf).
imparte(mickey, bigdata).
imparte(mimi, gps).
imparte(goofy, la).
profesor(X, Y):- imparte(X, Curso), estudia(Y, Curso).

%% Objetivos: 
%% estudia(hugo, X).
    /*Como rusultado obtenemos "plf" 
    lo que se hace es que al momento de la busqueda
    busca en todos los campos de "estudia" filtra por
    el nombre de hugo, y en el segundo campo busca 
    todas materias que este cursando. 
    */

%% profesor(luis, Estudiantes ).
/*
Luis imparte la materia de plf, por ende
bsca todos los estudiantes del profesor luis.
*/

%%---------------------------------------Fin Octavo---------------------------------------------------------

%%---------------------------------------Inicio Noveno-------------------------------------------------------

/*
Programa nueve :
Explica la diferencia entre cada programa en el uso de corte y fail.
*/

%% Hechos 
procesador(i5).
procesador(i7).

%% a) Codigo 1:
compara1(X):- procesador(X), compara1("Ultimo modelo").
    %% objetivo
%% compara1(X), write(X), nl, fail.

%% b) Codigo 2:
compara2(X) :- procesador(X), !.
compara2("ultimo procesador").
    %% objetivo.
%% compara2(X), write(X), nl, fail.


%% c) Codigo 3:
compara3(X, Y) :- procesador(X), !, procesador(Y).
compara3("ultimo procesador").
    %% objetivo.
%% compara3(X, Y),write(X-Y), nl, fail.

%%---------------------------------------Fin Noveno---------------------------------------------------------

%%---------------------------------------Inicio Decimo-------------------------------------------------------

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

%%---------------------------------------Fin Decimo-----------------------------------------------------------

%%---------------------------------------Inicio Onceavo-------------------------------------------------------
/*
Escriba un programa en prolog que determine la cantidad de propina 
a un mesero en un restaurante 
de acuerdo al servicio dado por el mesero y la calidad 
de los alimentos. Generalmente, la propina minima es de 10%
 pero si al cliente no le agradaon los alimentos y el servicio, 
 puede no dar propina al mesero.
*/


propina :-
%%-----------------------------------------------------------------------------------------------------------
    %% Estos primeros write son para mostrar la pantalla de bienvenida al usuario.
    write(' Developed By Team Dinamita © 2022 - 2999'),nl,
    write(' Indicaciones para usar el programa :'),nl,
    write(' 1. En un inicio introduces el monto ( Cantidad en MXN ).'),nl,
    write(' 2. Para calcular el porcentaje y cantidad de propina contamos con tres parametros : '),nl,
    write('  - "B" : Indica que el servicio o calidad de alimentos fue buena.'),nl,
    write('  - "N" : Indica que el servicio o calidad de alimentos fue estandar, ni bueno ni malo.'),nl,
    write('  - "M" : Indica que el servicio o calidad de alimentos fue deficiente o muy malo.'),nl,
    write('Para continuar en el programa introduce ("C") :  '),nl,
    read(Continuar), %% Lectura de opcion
%%------------------------------------------------------------------------------------------------------------
%% Valida si el usuario ha introducido "C". 
%% En caso de que si haya introducido "C" continuara con el programa
%% En el caso contrario, es decir, que el usuario haya introducido cualquier otra cosa. Prolog procedera a salirse del programa.
( Continuar == "C"
        ->
    %% Una vez que entra al primer if, empezara a pedirle los datos al usuario.
    %% Como primer paso, le pedira el monto que le salio al usuario en el restaurante o establecimiento.   
    write(' Cuenta : '),
    nl,
    read(Cuenta),

    %% Como segundo paso, el usuario evaluara la calidad del servicio con los estandares establecidos por Team Dinamita.
    write(' Servicio dado por el mesero (B/M/N) : '),
    nl,

    %% Como tercer y ultimo paso para el usuario, tendra que introducir segun su experencia que tal fue la calidad de alimentos,
    %% de igual forma esto en base a alguno de los tres estandares que establecimos.
    read(Servicio),
    write(' Calidad de los alimentos (B/M/N) : '),
    nl,
    read(Alimentos),
    %% validamos con un if de acuerdo a las anteriores respuestas.
    %% validamos cuando la comida y el servicio fueron buenos.
%%-----------------------------------------------------------------------------------------------------------

%% Segundo if.
%% En este segundo if el usuario final ya no tendra que hacer nada,
%% Ya que el algoritmo se encargara de ir resolviendo en base a las respuestas,
%% que el usuario ya nos ha proporcionado.

%%----------------------------------------------------------------------------------------------------------
%%  Aqui seguimos anidando ifs, para los primeros casos. Cuando el servicio es bueno + otros 3 ifs anidados 
%%  para las distintas combinaciones de calidad de alimentos.

%% Variables a tomar en cuenta dentro de los siguientes ifs :
    %% CuentaF : nos indica la cuenta final ya con la propina añadida.
    %% Prop : Nos indica la cantidad que deberemos de dar meramente de propina.

%%------------------------------------------------------------------------------------------------------------
    %% Entra al siguiente if de Servicio, cuando el servicio no fue ni bueno ni malo 
    %% Dentro del if hara todas las validaciones con las posibles combinaciones, es decir,
    %% Servicio Bueno("B") + Calidad de alimentos(Buena["B"]/Normal["N"]/Mala["M"])

    ( Servicio == "B" 
        -> 
        %% Cuando la calidad de alimentos es "B" o buena entrara a este if
        ( Alimentos == "B" %% Entra solo cuando el servicio es bueno y la calidad de alimentos tambien.
            ->
        %% Una vez ha entrado entre if es porque ya hizo las dos validaciones y mandara a imprimir resultado
        %% y pasara lo mismo en caso de que llegue a entrar a algun otro de los siguientes ifs de alimentos.
        write(' De acuerdo a lo anterior el porcentaje de propinas es : '),
        write('20%'),
        CuentaF is Cuenta * 1.20, %% CuentaF es una variable que toma la cuenta inicial y le suma la cant. propina
        nl,
        Prop is Cuenta * 0.20, %% Toma el monto que obtuvo en el restaurante inicialmente y la multiplica segun la combinacion de servicio y alimentos.

        %% Manda a imprimir el resultado
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
        write(' El total a pagar con propina incluida es : '),write(CuentaF)
        ;
         ( Alimentos == "N" %% Servicio: bueno + Calidad alimentos : normal
            ->
        write(' De acuerdo a lo anterior el porcentaje de propinas es : '),
        write('15%'),
        CuentaF is Cuenta * 1.15,
        nl,
        Prop is Cuenta * 0.15,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
        write(' El total a pagar con propina incluida es : '),write(CuentaF)    
        ;
        %% En caso de que el servicio de  meseros sea bueno pero los alimentos malos = 7%
        (
            Alimentos == "M" %% Servicio : bueno + calidad alimentos : mala o deficiente
            ->
        write(' De acuerdo a lo anterior el porcentaje de propinas es : '),
        write(' 7% '),
        CuentaF is Cuenta * 1.07,
        nl,
        Prop is Cuenta * 0.07,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
        write(' El total a pagar con propina incluida es : '),write(CuentaF)
        )
         )
        )
    ;
%%------------------------------------------------------------------------------------------------------------
    %% Entra al siguiente if de Servicio, cuando el servicio no fue ni bueno ni malo 
    %% Dentro del if hara todas las validaciones con las posibles combinaciones, es decir,
    %% Servicio Normal("N") + Calidad de alimentos(Buena["B"]/Normal["N"]/Mala["M"])
    ( Servicio == "N"
        ->
        ( Alimentos == "B" %% Servicio:  normal + calidad alimentos : buena
            ->
            write(' de acuerdo a lo anterior, el porcentaje de propinas es : '),
            write(' 12% '),
            CuentaF is Cuenta * 1.12,
            nl,
        Prop is Cuenta * 0.12,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
            write(' el total a pagar con propina incluida es : '),write(CuentaF)
            ;
            ( Alimentos == "N" %% Servicio : normal + calidad alimentos : normal
            ->
            write(' de acuerdo a lo anterior, el porcentaje de propinas es : '),
            write(' 10% '),
            CuentaF is Cuenta * 1.10,
            nl,
            Prop is Cuenta * 0.10,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
            write(' el total a pagar con propina incluida es : '),write(CuentaF)
            ;
            ( Alimentos  == "M" %% Servicio : normal + calidad alimentos : mala
            ->
            write(' de acuerdo a lo anterior, el porcentaje de propinas es : '),
            write(' 5% '),
            CuentaF is Cuenta * 1.05,
            nl,
            Prop is Cuenta * 0.05,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
            write(' el total a pagar con propina incluida es : '),write(CuentaF)
            %% Ahora evaluaremos los casos en donde el servicio de meseria es Malo + Las distintas calidades de alimentos ("B/M/N")
            )
            )
        )
    ;
%%------------------------------------------------------------------------------------------------------------
    %% Entra al siguiente if de Servicio, cuando el servicio no fue ni bueno ni malo 
    %% Dentro del if hara todas las validaciones con las posibles combinaciones, es decir,
    %% Servicio Malo/Deficiente("M") + Calidad de alimentos(Buena["B"]/Normal["N"]/Mala["M"])
    ( Servicio == "M" 
        ->
        ( Alimentos == "B" %% Servicio : deficiente + calidad alimentos : buena
            ->
            write(' de acuerdo a lo anterior, el porcentaje de propinas es : '),
            write(' 5% '),
            CuentaF is Cuenta * 1.05,
            nl,
            Prop is Cuenta * 0.05,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
            write(' el total a pagar con propina incluida es : '),write(CuentaF)
        ;
        ( Alimentos == "N" %% Servicio: deficiente + calidad alimentos : normal
            ->
            write(' de acuerdo a lo anterior, el porcentaje de propinas es : '),
            write(' 3% '),
            CuentaF is Cuenta * 1.03,
            nl,
            Prop is Cuenta * 0.03,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
            write(' el total a pagar con propina incluida es : '),write(CuentaF)
        ;
        (
            Alimentos == "M" %% Servicio : deficiente + calidad alimentos : deficiente/mala/nula
            ->
            write(' de acuerdo a lo anterior, el porcentaje de propinas es : '),
            write(' 0% '),
            CuentaF is Cuenta * 1.00,
            nl,
        Prop is Cuenta * 0.00,
        write('Basado en tu cuenta inicial, la cantidad que debes dar en propinas es : '),write(Prop),nl,
            write(' el total a pagar con propina incluida es : '),write(CuentaF)
        )
        )
        )
    )
    )
        )
).

%%---------------------------------------Fin Onceavo---------------------------------------------------------

%%---------------------------------------Inicio Doceavo-------------------------------------------------------
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
%%---------------------------------------Fin Doceavo---------------------------------------------------------