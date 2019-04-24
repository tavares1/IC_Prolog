mover(1,X,Y,_) :-
    write('Move disco do topo : '),
    write(X),
    write(' para '),
    write(Y),
    nl.
mover(N,X,Y,Z) :-
    N>1,
    M is N-1,
    mover(M,X,Z,Y),
    mover(1,X,Y,_),
    mover(M,Z,Y,X).

% Entrada pode ser move(4,left,center,right)
% Lembrar que podemos resolver tal problema em (2^n - 1)