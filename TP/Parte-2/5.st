" 	
ej. 5 
- un numero es primo si solo es divisible por sí mismo y el por el 1.
"
| nro_ingresado bool aux modulo |
nro_ingresado := 6.

aux := 2. "numero primo más chico"
nro_ingresado timesRepeat: [ 
	modulo := 2.
	bool := 1.
	[ (bool = 1) and: (modulo < aux) ] whileTrue: [ 
		(aux \\ modulo == 0) 
			ifTrue: [ bool := 0. ]
			ifFalse: [ modulo := modulo + 1. ].
	].
	aux := aux + 1.	
].
	(bool = 0) 
	ifTrue: [ ^'el numero {1} es primo.' format: [ nro_ingresado ] ]
	ifFalse: [ ^'el numero {1} NO es primo.' format: [ nro_ingresado ] ].