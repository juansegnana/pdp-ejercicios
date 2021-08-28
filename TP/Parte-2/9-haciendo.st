"
ej. 9
1) Dado un número determinar sus divisores.
2) Un número entero positivo se dice perfecto si es igual a la suma de todos sus divisores, excepto el mismo. Ejemplo: los números 6 (1+2+3), 28 (1+2+4+7+14) y 496 (1+2+4+8+16+31+62+124+248) son perfectos. Escriba un método booleano que permita diferenciar si un número (único parámetro) es perfecto.
"
| nro multiplos index cantidadMultiplos |
" Cargar datos "
nro:= 6.
cantidadMultiplos := 10.
" Iniciar "
multiplos := Array new: cantidadMultiplos.
index := 1.
cantidadMultiplos timesRepeat: [
	multiplos at: index put: (nro*index).
	index := index + 1.
].
^multiplos.