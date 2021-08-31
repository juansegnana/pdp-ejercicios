| f g cont cociente res1 res2 copy | " ej. 2 "
f:= 90. "dividendo | multiplicando"
g:= 2. "divisor | multiplicador"
(g == 0) ifTrue: [ ^ 'error: no debe ser 0' ].

" division con sumas sucesivas "
cont := 0.
cociente := 0.
[(cont > f)] whileFalse: [ 
	"	si el cociente /de la siguiente iteración)
		es mayor al dividendo, 
		debe retornar el cociente actual.	
	"
	(cont + g > f) ifTrue: [ 
		res1:= cociente.
		cont:= cont + g. "para que salga de while"
	].
	cont := cont + g.
	cociente := cociente + 1.
	
].


" multiplicación con sumas y restas sucesivas "
cont := 0.
copy := g.
[(copy ~= 0)] whileTrue: [ 
	"(copy-1 < 1) ifTrue: [ 
		res2:= cont.
	]."
	cont := cont + f.
	copy:= copy-1.
	res2:= cont.
].

" mostrar por pantalla: "
Transcript clear. "Limpia por pantalla"
Transcript show: ('Números: {1}, {2}' format: { f. g. }).
Transcript cr.
Transcript show: ('División: {1}' format: { res1. }).
Transcript cr.
Transcript show: ('Multiplicación: {1}' format: { res2. }).