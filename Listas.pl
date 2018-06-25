listar(L) :- Cabeza = [1,1.1] ,Cola = [2,3,[3.1,3.2,3.3],4,5], L =
[0,Cabeza|Cola].
adquiereCabeza([_|L],L).
%Eliminar mas elementos de la lista:
adquieredosCabezas([_,_|L],L).

progenitor(pedro,[ana,ramon]).
progenitor(ana,[ramon,pepe,juan]).

primerHijo(P,Hijo):-progenitor(P,[Hijo|_]).

%progenitor(pedro,ana).
%progenitor(ana,ramon).
%progenitor(pedro,ramon).

%primerHijo(P,Hijo) :- progenitor(P,Hijo),!.


