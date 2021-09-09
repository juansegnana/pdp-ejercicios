"
tp-3 ej-5
FORMA 1
"
| cad1 cad2 cadenaMayor cadenaMenor cad3 |

cad1 := 'hola'.
cad2 := 'mundo'.
cad3 := ''.

(cad1 size > cad2 size) 
ifTrue: [
	cadenaMayor := cad1.
	cadenaMenor := cad2.
]
ifFalse: [
	cadenaMayor := cad2.
	cadenaMenor := cad1.
].

1 to: (cadenaMayor size) do: [ :i |
	cad3 := cad3, (cadenaMayor at:i) asString.
	(i <= cadenaMenor size) ifTrue: [
		cad3 := cad3, (cadenaMenor at:i) asString.	
	].
].

^cad3.

------

"
tp-3 ej-5
FORMA 2
"
| cad1 cad2 cadenaMayor cad3 |

cad1 := 'hola'.
cad2 := 'mundo'.
cad3 := ''.

(cad1 size > cad2 size) 
ifTrue: [
	cadenaMayor := cad1.
]
ifFalse: [
	cadenaMayor := cad2.
].

cadenaMayor := cadenaMayor size.

1 to: (cadenaMayor) do: [ :i |
	(i <= cad1 size) ifTrue: [
		cad3:= cad3, (cad1 at:i) asString.	
	].
	(i <= cad2 size) ifTrue: [
		cad3 := cad3, (cad2 at:i) asString. 	
	].
].

^cad3.