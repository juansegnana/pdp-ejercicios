"ej 4."
| a b c discriminante res1 res2 |
a := 3. "cuadratico"
b := 8. "lineal"
c := 2. "independiente" 

(a == 0) ifTrue: [ ^'a debe ser diferente de 0' ].

"-b +- ( raiz de (b^2) - (4*a*c) )"
"dividido 2*a"
discriminante := (b**2) - (4*a*c).
(discriminante < 0) 
	ifTrue: [ 
		discriminante:= ( ( discriminante * (-1) ) sqrt ) * (-1).
	]
	ifFalse: [ 
		discriminante:= (discriminante) sqrt.
	].
res1 := (b negated) + discriminante / (2*a).
res2 := (b negated) - discriminante / (2*a).

" Redondear "
res1:= res1 roundTo: 0.01.
res2:= res2 roundTo: 0.01.

" mostrar por pantalla: "
Transcript clear. "Limpia pantalla"
Transcript show: ('Números: {1}X^2, {2}X, {3}' format: { a. b. c. }).
Transcript cr.
Transcript show: ('Resultado 1: {1}. Resultado 2: {2}' format: { res1. res2. }).