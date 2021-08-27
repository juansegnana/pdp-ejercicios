"ej 4."
| a b c res1 res2 |
a := 2. "cuadratico"
b := 6. "lineal"
c := 3. "independiente" 

(a == 0) ifTrue: [ ^'a debe ser diferente de 0' ].

"-b +- ( raiz de (b^2) - (4*a*c) )"
"dividido 2*a"
b negated.
res1 := (b negated) + ( (b**2) - (4*a*c) ) sqrt / (2*a).
res2 := (b negated) - ( (b**2) - (4*a*c) ) sqrt / (2*a).

" Redondear "
res1:= res1 roundTo: 0.01.
res2:= res2 roundTo: 0.01.

" mostrar por pantalla: "
Transcript clear. "Limpia pantalla"
Transcript show: ('Números: {1}X^2, {2}X, {3}' format: { a. b. c. }).
Transcript cr.
Transcript show: ('Resultado 1: {1}. Resultado 2: {2}' format: { res1. res2. }).