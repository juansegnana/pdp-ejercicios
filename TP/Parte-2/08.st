"
ej. 8
Escribir un programa que ingrese 
un listado de números e 
informe la cantidad de múltiplos 
de 2, 3, 5 y 7.
"
| nros analizar index subindex modulo multiplosActual nroActual analizarActual contadores |
" Cargar datos "

analizar := #( 2 3 5 7 ).
contadores := #( 0 0 0 0 ).
nros := #( 5 11 14 16 18 20 21 25 ).

index := 1.
analizar size timesRepeat: [
	analizarActual := (analizar at: index).
	subindex := 1.
	multiplosActual := 0.
	nros size timesRepeat: [
		nroActual := nros at: subindex.
		(nroActual \\ analizarActual == 0) ifTrue: [ 
			multiplosActual := multiplosActual + 1.
		].
		subindex := subindex + 1.
	].
	contadores at: index put: multiplosActual.	
	index := index + 1.
].
"^contadores value."
" resultados "
'Numeros: {1}. Contador de multiplos: {2}.' format: [ nros value. contadores value. ].