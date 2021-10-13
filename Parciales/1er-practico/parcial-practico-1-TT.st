"
Ingresar n caracteres (20 por ejemplo). Al superar la cantidad propuesta, devuelver un string con todos los caracteres ingresados no repetidos.
En el caso de que todos los caracteres sean repetidos, devolver nil.
"
| arrCar maxCar carAct input cleanArr output |

output:= ''.
arrCar:= OrderedCollection new.
carAct:= 1.
maxCar:= 5.

[ carAct <= maxCar ] whileTrue: [
	input := UIManager default request: 'ingrese caracter'.
	(input ~= nil) ifTrue: [ 
		((input size) = 1) ifTrue: [
			arrCar add: input.
			carAct:= carAct + 1.	
		].
	].
].

cleanArr := Set newFrom: arrCar.
((cleanArr size) = 1) ifTrue: [ 
	^nil.
].
cleanArr do: [ :car |
	output:= output, car.
].
^(output trimBoth).

" consigna: https://snipboard.io/TuMxCG.jpg "
| n suma op indAct |

n := 100.
suma := 0.
indActual := 0.

[ indAct <= n ] whileTrue: [
	op:= ((-1)**indAct) / ((2*indAct)+1)).
	suma := suma + op.
	indAct := indAct + 1.
].
^suma.
