"
TP-3-EJ10-a
Dado un texto, se pide:
(a)i. la posición inicial de la palabra más larga,
(b)ii. la longitud del texto,
(c)iii. cuantas palabras con una longitud entre 8 y 16 caracteres poseen más de tres veces la vocal 'a' -> https://www.wordsfox.com/espanol/scrabble-palabras-con/aaaa
"
| frase fraseArr fraseActual longMayor indexMayor contC |

frase := 'El fracaso es simplemente una nueva oportunidad de empezar de nuevo, esta vez de forma más inteligente'.
longMayor := -1.
contC := 0.
"----"
"separa frase por espacios y coloca cada palabra en un arreglo"
fraseArr := frase splitOn: ' '.
1 to: (fraseArr size) do: [ :i |
	fraseActual := (fraseArr at: i).
	"punto ii"
	( fraseActual size > longMayor )
	ifTrue: [
		longMayor := fraseActual size.
		indexMayor := i.
	].
	"punto iii"
	((fraseActual size >= 8) and: (fraseActual size <= 16))
	ifTrue: [
		contA:= 0.
		1 to: (fraseActual size) do: [:j |
			((fraseActual at: j) asLowercase = $a)
			ifTrue: [
				contA:= contA + 1.
			].
		].
		(contA > 3) ifTrue: [
			contC:= contC + 1.
		].
	].
].

"----"
Transcript clear.
Transcript show: ('i. Posición de palabra más larga: {1}, palabra: {2}' format: { indexMayor. (fraseArr at: indexMayor). }).
Transcript cr.
Transcript show: ('ii. Longitud del texto: {1}' format: { frase size. }).
Transcript cr.
Transcript show: ('iii. Palabras con más de 3 "a": {1}' format: { contC. }).