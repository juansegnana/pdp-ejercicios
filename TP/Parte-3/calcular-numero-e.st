| a suma |

a := 10.
suma := 0.
0 to: a do: [ :ind |
	
	suma := suma + (1/(ind factorial))

].

^suma asFloat. 