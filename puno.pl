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


