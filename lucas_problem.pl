comecar([r,r,r,r,e,b,b,b,b]).  % posição inicial dos "sapos" no problema de lucas.

mover(P1,P2):- append(A,[r,e|B],P1), append(A,[e,r|B],P2).
mover(P1,P2):- append(A,[e,b|B],P1), append(A,[b,e|B],P2).
mover(P1,P2):- append(A,[e,r,b|B],P1), append(A,[b,r,e|B],P2).
mover(P1,P2):- append(A,[r,b,e|B],P1), append(A,[e,b,r|B],P2).

solucao([b,b,b,b,e,r,r,r,r]).   

sapo :- comecar(P), resolver(P, [], R),
        maplist(writeln, R), nl, nl, fail ; true.

resolver(P, Prev, R):-
    solucao(P) -> reverse([P|Prev], R) ;
    mover(P, Q), \+memberchk(Q, Prev), resolver(Q, [P|Prev], R).