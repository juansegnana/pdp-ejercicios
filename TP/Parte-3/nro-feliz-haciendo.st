| a numbOp b resg |

numbOp := 0.
a:= 7.
b:= (a raisedTo: 2).

[ (b ~= a) and: (b ~= 4) ]
whileTrue: [ 
	(b > 9) 
	ifTrue: [ 
		[ b~=0 ]
		whileTrue: [
			resg := b. 
			b:= (resg\\10).
			numbOp = (numbOp + (b raisedTo: 2)).
			b:= (resg//10).
		].
		b:= numbOp.
	]
	ifFalse: [ 
		b:= b raisedTo:2.
	]
].
(b = 1) 
ifTrue: [ ^'es nro feliz' ]
ifFalse: [ ^'no es nro feliz' ].

"https://docs.google.com/document/d/10R7iPycqbtJNd6U37iGgl5irCyzJC8XjdxS-ZaTuUJs/edit"
