"
ej. 6
Nro. es par o impar.
"
| nro |

nro := 5.

(nro \\ 2 == 0) 
	ifTrue: [ 'El nro {1} ES par.' format: [ nro. ] ]
	ifFalse: [ 'El nro {1} NO es par.' format: [ nro. ] ].