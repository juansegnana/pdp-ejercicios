"
ej. 7
Dado un número determinar sus múltiplos.
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