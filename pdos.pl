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



