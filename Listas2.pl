progenitor(pedro,[ana,ramon,pedro,javier,josh,vilma,nicolas]).
progenitor(juan,[ben,pepe,josue,jessica,pavel,keith,kyle]).

%padreDe(Padre,Hijo):-  progenitor(Padre,Hijos),buscar(Hijo,Hijos).
%buscar(Hijo,[]):- !,fail.
%buscar(Hijo,[Hijo|L]) :-!,true.
%buscar(Hijo,[C|L]):-buscar(Hijo,L).

padreDe(Padre,Hijo):-  progenitor(Padre,Hijos),member(Hijo,Hijos).
