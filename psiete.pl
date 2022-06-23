% Que salida tiene el siguiente objetivo si se utiliza ; ?

% Hecho 
p(a,b).
p(b,c).
p(X,Y):- p(Y,X).

%% objetivos
%?- p(X,Y).

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