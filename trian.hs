-- Triangulo Pascal y Sierpinski

trian 0 = [1]
trian n | n>0= [1]++ (zipWith(+)(trian(n-1)) (tail(trian(n-1))))++[1]

--imprimeLista [] = "listo"
--imprimeLista (a:bs) = [(show a)]:imprimeLista bs

filaAString fila = concat (map show fila)

centrar ancho str =
  let espacio = replicate ((ancho - length str) `div` 2) ' '
  in espacio ++ str

formatear n =
  let filas = [trian i | i <- [0..n]]
      ancho = length (filaAString (last filas))
  in [centrar ancho (filaAString fila) | fila <- filas]

imprimirTriangulo n = mapM_ putStrLn (formatear n)

main = do
   mapM_putStrLn = 


trianDiferido 0 = [1]
trianDiferido n | n>0=
              [1]++ (zipWith(+)ls (tail ls)) ++[1]
	      where --Nombramiento diferido, optimizacion al evitar recálculo
		      ls = trianDiferido(n-1)
trianAnticipado 0 = [1]
trianAnticipado n | n>0= let ls = trianAnticipado (n-1) in
                                     [1]++(zipWith(+)ls (tail ls)) ++ [1]

