| f g cont cociente res1 res2 | " ej. 2 "
f:= 10. "dividendo | multiplicando"
g:= 2. "divisor | multiplicador"
(g == 0) ifTrue: [ ^ 'error: no debe ser 0' ].

" division con sumas sucesivas "
cont := 0.
cociente := 0.
[(cont > f)] whileFalse: [ 
	cont := cont + g.
	cociente := cociente + 1.
	"	si el cociente /de la siguiente iteración)
		es mayor al dividendo, 
		debe retornar el cociente actual.	
	"
	(cont + g > f) ifTrue: [ 
		res1:= cociente.
		cont:= cont + g. "para que salga de while"
	].
].


" multiplicación con sumas sucesivas "
cont := 0.
[(cont > f)] whileFalse: [ 
	cont := cont + g.
	(cont + g > f) ifTrue: [ 
		res2:= cont.
		cont:= cont+g.
	].
].
" mostrar por pantalla: "
Transcript clear. "Limpia por pantalla"
Transcript show: ('Números: {1}, {2}' format: { f. g. }).
Transcript cr.
Transcript show: ('División: {1}' format: { res1. }).
Transcript cr.
Transcript show: ('Multiplicación: {1}' format: { res2. }).