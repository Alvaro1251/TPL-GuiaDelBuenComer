
% de que producto prviene cada alimento
proviene(leche,vaca).
proviene(vaca, animal).
proviene(queso,leche).
proviene(jamon, cerdo).
proviene(cerdo, animal).
proviene(harina,trigo).
proviene(pan,harina).
proviene(budinDePan,pan).
proviene(tostado,pan).
proviene(tostado,queso).

% Si un alimento:
%   Es lácteo, o sea, es derivado de la leche.
%   Tiene gluten, que por ahora son todos los derivados del trigo.
%   Es derivado de algún animal.

derivadoDe(Producto,OtroProducto):-
    proviene(Producto,OtroProducto).
derivadoDe(Producto,OtroProducto):-
    proviene(Producto,UnIntermedio),
    derivadoDe(UnIntermedio, OtroProducto).

esLacteo(Alimento):-
    derivadoDe(Alimento, leche).

tieneGluten(Alimento):-
    derivadoDe(Alimento, trigo).

derivadoDeAnimal(Alimento):-
    derivadoDe(Alimento, animal).





    

