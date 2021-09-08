"
TP-3-EJ6
Dada una cadena de entrada, devolver otra en la cual las palabras estén en formato ‘tipo título’.
Ejemplo: 'hola mundo' -> 'Hola Mundo'.
"
| input output carActual mayus |

input := 'hOla mUnDO'.
output := ''.
mayus := true.

1 to: (input size) do: [ :i | 
	carActual := (input at: i) asString.
	(mayus) 
	ifTrue: [
		output := output, (carActual asUppercase).
		mayus := false.
	]
	ifFalse: [
		(carActual = ' ')
		ifTrue: [
			mayus := true.	
			output := output, carActual.
		]
		ifFalse: [
			output := output, (carActual asLowercase).
		].
	].
].

^output.