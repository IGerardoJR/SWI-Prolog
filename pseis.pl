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
