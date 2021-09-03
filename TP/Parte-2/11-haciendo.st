"
ej. 10
Ingresar 2 polinomios y realizar la suma y el producto de ambos.
Ejemplo: (2x^2+5x-1)+(4x^2-2x+1).

pedir a usuario que ingrese numero con X, sino será el nro indep. y finaliza.
por lo tanto, el ult. elemento del array siempre será el independiente.
grado más grande: array size - 1.
"
| pedir polN salir arrCopy indexTemp numTemp opTemp polA polB array suma sumaFun mulFun coefA coefB sumaActual sumaArray temp producto tempMulA tempMulB |

pedir := [ :nombrePol | 
	polN := OrderedCollection new.
	salir := false.
	indexTemp := 0.
	[ salir ] whileFalse: [
		numTemp := [ 
			opTemp := (UIManager default request: 'Polinomio: ', nombrePol, ' - Ingrese coeficiente seguido de una X. Si es el término independiente, no colocar X.'  initialAnswer: '0').
			(opTemp == nil) ifTrue: [ ^'error input' ].
			((opTemp asLowercase) includesSubstring: 'x') 
			ifTrue: [ 
				" reemplazar X del input "
				opTemp:=(opTemp copyReplaceAll: 'x' with: '') asInteger.
			]
			ifFalse: [ 
				opTemp := opTemp asInteger. 
				salir := true.
			].
			opTemp.
		].
		polN add: numTemp value. 
		indexTemp := indexTemp + 1.
	].	
	polN.
].

polA := pedir value: 'A'.
polB := pedir value: 'B'.

" verificar tamaño de arrays "
(polA size > polB size) 
ifTrue: [ 
	array:= polA. 
	" reordenar tamaño de polB "
	arrCopy := polB.
	polB:= Array new: (polA size) withAll: 0.
	temp := 1.
	" tamaño arreglo nuevo - arreglo original + 1 para reubicar "
	((array size) - (arrCopy size) + 1) to: (polB size) do: [ :i | 
		polB at: i put: (arrCopy at:temp).
		temp := temp + 1.
	].
] 
ifFalse: [ 
	array:= polB. 
	" reordenar tamaño de polA "
	arrCopy := polA.
	polA:= Array new: (polB size) withAll: 0.
	temp := 1.
	((array size) - (arrCopy size) + 1) to: (polB size) do: [ :i | 
		polA at: i put: (arrCopy at: temp).
		temp := temp + 1.
	].
].

" SUMA DE POLINOMIOS "
sumaFun := [ :arrA :arrB |
	sumaArray := Array new: array size.
	1 to: (array size) do: [ :i | 
		coefA := arrA at: i.
		coefB := arrB at: i.
		sumaActual := coefA + coefB.
		sumaArray at: i put: sumaActual.
	].
	sumaArray.
].
suma := sumaFun value: polA value:polB.

" MULTIPLICACION DE POLINOMIOS "
mulFun := [ :arrA :arrB |
	tempMulA := Array new: (arrA size) withAll: 0.
	tempMulB := Array new: (arrA size) withAll: 0.
	indexTemp := (arrB size).
	1 to: (arrB size) do: [ :i | 
		arrB at: i.
		indexTemp := indexTemp + 1.
	].
].
producto := mulFun value: polA value: polB.

"Mostrar por pantalla resultados"
Transcript clear.
Transcript show: 'polA + polB es igual a:'; cr.
temp := suma size - 1. "grado"
1 to: suma size do: [ :i |
	
	(temp > 0)
	ifTrue: [ 
		Transcript show: ('{1}X^{2} + ' format: { 
		suma at: i. 
		temp. }).	
	]
	ifFalse: [ 
		Transcript show: ('{1}' format: {   suma at: i. }).	
	].
	
	temp := temp - 1.
	
].
Transcript cr.
Transcript show: ('Multiplicación: {1}' format: { producto }).
Transcript cr.
Transcript show: ('{1} - {2}' format:{ polA. polB. }).
