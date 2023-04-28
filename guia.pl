alimento(banana, fruta).
alimento(apio, verdura).
alimento(champignon, hongo).
alimento(bondiola, carne).
alimento(huevo, huevo).
alimento(leche, lacteo).

origenAlimento(verdura, vegetal).
origenAlimento(huevo, huevo).
origenAlimento(carne, animal).
origenAlimento(hongo, fungi).
origenAlimento(lacteo, animal).


% De qué producto proviene cada alimento.

alimentoProvieneDe(Alimento, Origen):-
    alimento(Alimento, Tipo),
    origenAlimento(Tipo, Origen).

% Un alimento:
% Es lácteo, o sea, es derivado de la leche.
% Tiene gluten, que por ahora son todos los derivados del trigo.
% Es derivado de algún animal.

esDerivadoDe(leche, vaca).
esDerivadoDe(queso, leche).
esDerivadoDe(harina, trigo).



    

