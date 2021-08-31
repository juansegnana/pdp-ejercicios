"
ej. 12
Se tiene un arreglo de n números naturales que se quiere ordenar por frecuencia, y en caso de igual frecuencia, por su valor. Por ejemplo, a partir del arreglo [1, 3, 1, 7, 2, 7, 1, 7, 3] se quiere obtener [1, 1, 1, 7, 7, 7, 3, 3, 2]
"
| arrN contFrecuencias arrOrdenado |

arrN := #( 1 3 1 7 2 7 1 7 3 ).
arrOrdenado := Array new: arrN size.
contFrecuencias := Set new.

1 to: arrN size do: [ :i |
	(contFrecuencias inclues: arrN at i) ifFalse: [
		
	].
].

