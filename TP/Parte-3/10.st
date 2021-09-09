"
TP-3-EJ-9
A partir de una frase ingresada por el usuario contar la cantidad de palabras que empiezan con una determinada letra (también ingresada por el usuario).
"
"
TP-3-EJ10
Ídem anterior, pero contar la cantidad de palabras que terminan con una letra determinada.
"

| frase letra ultLetra resguardo cont |

"input al user"
frase := 'Sed tortor lacus, pulvinar vel dapibus vel, hendrerit ut enim. Nulla faucibus at libero ut' asLowercase.
letra := $t asLowercase.

(( (frase isNumber) or: (letra isNumber) ) or: ( (frase = nil) or: (letra = nil) ))
ifTrue: [^'error input'.].

ultLetra := false.
resguardo := ''.
cont := 0.

1 to: (frase size) do: [ :i | 
	(ultLetra)
	ifTrue: [
		ultLetra := false.
		(resguardo = letra) ifTrue: [
			cont := cont + 1.
		].
	]
	ifFalse: [
		(((frase at: i) asString = ' ') or: ((frase at: i) asString = ',')) 
		ifTrue: [
			ultLetra := true.
		]
		ifFalse: [
			resguardo := (frase at: i).
		].
	].
].

^cont.