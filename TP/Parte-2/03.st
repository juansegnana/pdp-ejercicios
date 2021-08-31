"ej 3."
| base exp cont res|
base:= 5. "base"
exp:= 2. "exponente"

"res := base**exp."
cont := 1.
exp timesRepeat: [
	cont := cont * base.
].
res:= cont.

" mostrar por pantalla: "
Transcript clear. "Limpia por pantalla"
Transcript show: ('Números: {1}, {2}' format: { base. exp. }).
Transcript cr.
Transcript show: ('Resultado {1}' format: { res. }).