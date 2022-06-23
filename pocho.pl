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