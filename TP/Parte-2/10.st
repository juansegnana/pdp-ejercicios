"
ej. 10
1) Dado un número determinar sus divisores.
2) Dos números se dicen amigos cuando uno de ellos es igual a la suma de todos los divisores del otro excepto el mismo. Ejemplo: los números 220 (1+2+4+5+10+11+20+22+44+55+110=284) y 284 (1+2+4+71+142=220) son amigos. Escriba un método booleano que permita discernir si dos números (parámetros) son amigos.
"
| nro nro2 sumaGeneral nroActual |
" Cargar datos "
nro:= 220.
nro2:= 284.
sumaGeneral := 0.

nroActual := nro-1.

[ (nroActual > 0) ] whileTrue: [ 
	(nro \\ nroActual == 0) ifTrue: [ sumaGeneral := sumaGeneral + nroActual ].
	nroActual := nroActual - 1.
].

(sumaGeneral == nro2)
	ifTrue: [ '{1} es un número amigo de {2}.' format: [ nro. nro2. ] ]
	ifFalse: [ '{1} NO es un número amigo de {2}.' format: [ nro. nro2. ] ].