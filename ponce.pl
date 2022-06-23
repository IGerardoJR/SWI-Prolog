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

  %% Bueno + Bueno = 20%.  | 
  %% Bueno + Normal = 15%. | 
  %%  Bueno + Malo =  7%. | 
  %% Normal + Bueno = 12%
  %% Normal + Normal = 10%
  %% Normal + Malo = 5%
  %% Malo + Bueno = 5%
  %% Malo + Normal = 3%
  %% Malo + Malo = 0%


