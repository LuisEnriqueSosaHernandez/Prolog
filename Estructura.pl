estudiantes(e1(nombre,apellidos,fecha(dia,mes,anio)),
            e2(vladimir,lopez,fecha(22,08,1990))).

%p(a,b,c)=..Lista
%Estructura=..[p,a,b,c]
%Desglosar los parametros del poligono en una lista
ladosiguales(P):- P=..[_|Lista],iguales(Lista).
%Comparar todos los elements de la lista
iguales([]):-!,true.
iguales([_]):-!,true.
iguales([X,X|Lista]):-iguales([X|Lista]).

li(P):- functor(P,Nombre,Cantidad),bi(P,Cantidad).
bi(P,0):-!,true.
bi(P,1):-!,true.
bi(P,N):-arg(N,P,Num1),Ant is N-1,arg(Ant,P,Num2),Num1==Num2,
    bi(P,Ant).
