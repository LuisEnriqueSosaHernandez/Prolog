existe(persona(nombre,apellidos,edad,sexo)).

dameNombre(persona(Nombre,_,_,_),Nombre).

codigo(P):-dameNombre(P,Nombre1).
codigo(V):-dameNombre(V,Nombre2).
codigo(R):-dameNombre(R,Nombre3).
codigo(A):-dameNombre(A,Nombre4).
codigo(M):-dameNombre(M,Nombre5).
