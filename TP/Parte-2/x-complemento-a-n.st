| digito digStr temp digitos compArr sumaFinal verif digOriginal |

digito := 3872.
digOriginal := digito.
digStr := digito asString.
digitos := digStr size.
compArr := Array new: digitos.

sumaFinal := 0.
temp:= 1.

1 to: digitos do: [ :i | 
	compArr at: i put: ( 9 - (digito \\ 10) ).
	digito := (digito // 10). 
	sumaFinal := sumaFinal + ((compArr at: i) * temp).
	temp:= temp * 10.
].

sumaFinal := sumaFinal+1.
verif := sumaFinal + digOriginal.