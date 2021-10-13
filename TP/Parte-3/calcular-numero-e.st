| a suma temp |
a := 100.
suma := 1.
temp:= 1.
1 to: a do: [ :ind |
	temp := temp*ind.
	suma := suma + (1/(temp)).
].
^suma asFloat.