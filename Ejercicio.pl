%carro(chapa,consumo_por_km_recorrido,tipo,listado_choferes
carro(hav379,0.2,petroleo,[chofer(kyle,5,17),chofer(josh,12,60),chofer(juan,3,8)]).
carro(hav382,0.5,petroleo,[chofer(kyle,5,17),chofer(josh,12,60),chofer(juan,3,8)]).
carro(hav383,0.4,petroleo,[chofer(kyle,5,17),chofer(josh,12,60),chofer(juan,3,8)]).
carro(hav380,0.3,gasolina,[chofer(pedro,20,56),chofer(kyle,5,30),chofer(pedro,20,56)]).
%chofer(nombre,a;os_experiencia,km_recorridos)
%Resolver mediante preguntas a la base de conocimientos:
% a)Que cantidad de choferes ha conducido el carro que tiene como chapa la que entre el usuario

cantidad:-write('Entre la chapa del carro: '),read(Chapa),carro(Chapa,_,ListaChoferes),length(ListaChoferes,Cantidad),write('La cantidad es: '),write(Cantidad).



%b) Listado de las chapas de todos los carros que consumen petroleo

listadoChapas:- findall(Chapa,carro(Chapa,_,petroleo,_),ListaChapas),muestraChapas(ListaChapas).
muestraChapas([]):-!.
muestraChapas([C|ListaChapas]):-write(C),nl,muestraChapas(ListaChapas).

% c) Dada la chapa de un carro y una cantidad de conmbustible determinar
% cuantos km puede recorrer dicho carro

cantKm(Chapa,Combustible,CantKm):-
    carro(Chapa,Consumo,_,_),CantKm is Consumo*Combustible.




