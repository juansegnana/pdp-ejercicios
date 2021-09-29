| invertirMay carActual | 

invertirMay := [ :input |
(input class ~= ByteString) ifTrue: [^'error tipo entrada'].
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
].

^invertirMay value: 'hOla MunDo'.