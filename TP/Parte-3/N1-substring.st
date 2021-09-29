"
Ej. planteado. 2: dada una frase, encontrar si contiene una subfrase.

"
| string substring bool | 

string := 'hello World, frase a tratar en un momento'.
substring := 'frase a tratar'.
"1"
^string includesSubstring: substring caseSensitive: false. 
