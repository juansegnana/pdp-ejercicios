"
ej. 9
1) Dado un número determinar sus divisores.
2) Un número entero positivo se dice perfecto si es igual a la suma de todos sus divisores, excepto el mismo. Ejemplo: los números 6 (1+2+3), 28 (1+2+4+7+14) y 496 (1+2+4+8+16+31+62+124+248) son perfectos. Escriba un método booleano que permita diferenciar si un número (único parámetro) es perfecto.
"
| nro sumaGeneral nroActual |
" Cargar datos "
nro:= 496.
sumaGeneral := 0.

nroActual := nro-1.

[ (nroActual > 0) ] whileTrue: [ 
	(nro \\ nroActual == 0) ifTrue: [ sumaGeneral := sumaGeneral + nroActual ].
	nroActual := nroActual - 1.
].

(sumaGeneral == nro)
	ifTrue: [ '{1} es un número perfecto' format: [ nro. ] ]
	ifFalse: [ '{1} NO es un número perfecto' format: [ nro. ] ].