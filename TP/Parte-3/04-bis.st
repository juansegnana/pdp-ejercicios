"tp-3 ej. 4 - bis. Aceptar acentos"
| input acentos carActual contVocales |

acentos := 'áéíóú'.
"input := 'hola mundo'. -> 4 vocales"
input := (UIManager default request: 'Ingrese string:'  initialAnswer: 'hola mundo').
(input == nil) ifTrue: [ ^'error input' ].

contVocales := 0.
1 to: (input size) do: [ :i | 
	carActual := input at: i.
	
	(carActual isVowel)
	ifTrue: [ 
		contVocales := contVocales + 1.
	]
	ifFalse: [
		(acentos includesSubstring: ((carActual asString) asLowercase)) 
		ifTrue:[
			contVocales := contVocales + 1.
		].
	].	
].

^contVocales.