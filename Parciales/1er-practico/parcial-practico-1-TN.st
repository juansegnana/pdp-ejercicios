"
I) Solicitar el ingreso de n números a través de UIManager hasta que la sumatoria de estos números supere al 100. Al finalizar, devolver la sumatoria (mayor o igual a 100).
"
| sum input |
sum := 0.

[ sum < 100 ] whileTrue: [
	input := (UIManager default request: 'Ingresar numero al azar').

	(input ~= nil) ifTrue: [ 
		(input isAllDigits) ifTrue: [ 
			sum := sum + (input asNumber).
		].
	].

].

^sum.

"-----------------------"
"
II) Ingresar una frase compuesta por múltiples oraciones(palabras separadas por un ‘.’), calcular el promedio de palabra por oración.
"

| input oraciones palabras cantPalTotal promedio |

input:= (UIManager default request: 'Ingrese oracion').

(input = nil) ifTrue: [ ^'error input' ].
(input size <= 1) ifTrue: [ ^'error input' ].

oraciones := input substrings: '.'.
cantPalTotal := 0.

oraciones do: [ :oracion | 
	palabras := oracion substrings.
	cantPalTotal := cantPalTotal + (palabras size).
].

promedio := cantPalTotal / (oraciones size).
^promedio.

