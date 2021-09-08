"TP-3 ej. 2"
| input carActual | 

"input := 'hOlA MuNdo'."
input := (UIManager default request: 'Ingrese string:'  initialAnswer: 'h').
(input == nil) ifTrue: [ ^'error input' ].

1 to: (input size) do: [ :i | 
	carActual := (input at: i).
	(carActual isLetter) 
	ifTrue: [
		(carActual isLowercase) 
		ifTrue: [
			carActual := carActual asUppercase.
		]
		ifFalse: [
			carActual := carActual asLowercase.
		].
	].
	input at: i put: carActual.	
].

^input.