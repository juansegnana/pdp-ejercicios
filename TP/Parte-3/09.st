"
TP-3-EJ-9
A partir de una frase ingresada por el usuario contar la cantidad de palabras que empiezan con una determinada letra (también ingresada por el usuario).
"
| frase letra primerLetra cont |

"input al user"
frase := 'Sed tortor lacus, pulvinar vel dapibus vel, hendrerit ut enim. Nulla faucibus at libero ut' asLowercase.
letra := $u asLowercase.

(( (frase isNumber) or: (letra isNumber) ) or: ( (frase = nil) or: (letra = nil) ))
ifTrue: [^'error input'.].

primerLetra := true.
cont := 0.

1 to: (frase size) do: [ :i | 
	(primerLetra)
	ifTrue: [
		primerLetra := false.
		((frase at: i) = letra) ifTrue: [
			cont := cont + 1.
		].
	]
	ifFalse: [
		((frase at: i) asString = ' ') ifTrue: [
			primerLetra := true.
		].
	].
].

^cont.