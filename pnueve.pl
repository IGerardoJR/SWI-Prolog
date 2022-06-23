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
