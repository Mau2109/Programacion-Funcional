--- Resulta que Haskell se apoya en algo teorico llamado cálculo lambda.
--- El cálculo lambda es equivalente en poder computacional a las máquinas de Turing.
--- Lo que podamos hacer con las Maquinas de Turing lo podemos hacer con cálculo lambda; de otras forma .
--- ingenieril, lo que podemos hacer con java
--- y en la parte de la complejidad, y en la parte de la complejidad es algo inherente.

--- take n toma los n elementos de la lista
--- drop n omite los n elementos de la lista

fib 0 = 1
fib 1 = 1
fib n | n>1 = fib(n-1)+fib(n-2)

fibs = 1:1:zipWith (+) fibs (tail fibs)

fibEficiente n = fibs !! n

suma x y = x+y
sectionSuma3 y = suma 3 y
sectionPura = suma 3
anonimaSuma3 = (\x -> suma x 3)

genFib 0 = (1,1)
genFib n = (a, b) where
            (a,b) = genFib (n-1)
	    
--- (fib n, fib n+fib(n-1))
--- let (a,b) = (fib n, fib(n-1)) in (a,a+b)