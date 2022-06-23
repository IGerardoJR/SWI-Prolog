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


% Cualquiera pued<e ser viajero si esta sano y rico
viajero(X):- sano(X), rico(X).

% Calquiera puede ser viajar si es un viajero.
viajar(X):- viajero(X).

%% quien esta sano y rico.
sano_rico(Sano, Rico, X):- sano(X), rico(X).




/* Objetivos 
% ¿ Quien puede viajar ?
%% viajero(X).

% ¿ Quien esta sano y rico ?
% sano_rico(Sano,Rico):- sano(X),rico(X).
% donald.
*/
