"
Ej. Propuesto 1. Ingresar IP (4 bloques de ). Cada bloque no debe superar 255. Deben ser solo numeros y puntos. Convertir cada bloque a binario.
"
| input noValido actual output |
input := '192.168.0.1'.
output := OrderedCollection new.
input := input splitOn: '.'.

((input size) ~= 4) ifTrue: [ ^'error, deben ser 4 bloques.' ].

noValido := false.

1 to: (input size) do: [ :i | 
	actual:= input at:i.
	(actual asInteger = nil) 
	ifTrue: [ ^'nro. no valido' ] 
	ifFalse: [ actual:= actual asInteger ].
	
	((actual) > 255) 
	ifTrue: [ ^'error, debe ser menor o igual a 255'. ]
	ifFalse: [
		output add: (actual printStringBase: 2).
	].
].

^output joinUsing: '.'.