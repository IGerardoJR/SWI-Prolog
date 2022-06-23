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
