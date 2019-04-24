
% Esses são os fatos!

% arvore genealógica dos lannister

gerou(tywin,cersey).
gerou(tywin,jaime).
gerou(tywin,tyrion).

gerou(joanna,cersey).
gerou(joanna,jaime).
gerou(joana, tyrion).

gerou(cersey, joffrey).
gerou(cersey, tommen).
gerou(cersey, myrcella).

gerou(jaime, joffrey).
gerou(jaime, tommen).
gerou(jaime, myrcella).


% sexo

feminino(joanna).
feminino(cersey).
feminino(myrcella).
feminino(margaery).
feminino(sansa).
masculino(tywin).
masculino(tyrion).
masculino(jaime).
masculino(robert).
masculino(tommen).
masculino(joffrey).

% mortos

morto(tywin).
morto(joanna).
morto(robert).
morto(joffrey).
morto(margaery).
morto(tommen).
morto(myrcella).

% casou com

casou(tywin,joanna).
casou(joanna,tywin).
casou(robert,cersey).
casou(cersey,robert).
casou(tyrion,sansa).
casou(sansa,tyrion).
casou(joffrey,margaery).
casou(margaery,joffrey).
casou(tommen,margaery).
casou(margaery,tommen).


% Definindo Regras 

% :- (IMPLICA)

filho(X, Y) :-
    gerou(X, Y).

mae(X, Y) :-
    gerou(X, Y),
    feminino(X).

pai(X, Y) :-
    gerou(X, Y),
    masculino(X).

avos(X,Z) :- 
    gerou(X,Y),
    gerou(Y,Z).