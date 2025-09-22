main = do
       putStrLn "Kiubooo Hola como te llamas?"
       inpStr <- getLine
       putStrLn $ "Bienvenido a la clase de programacion funcional " ++ inpStr ++ "!"
       putStrLn "Cuentame que es lo que mas te gusta hacer"
       inpStr <- getLine
       putStrLn $ "Que interesante " ++ inpStr ++ "A mi tambien me gusta" ++ inpStr ++ "!"

tomae 0 bs = []
tomar 1 bs | not (bs ==[]) = [head bs]
tomar n (a:bs) | n>1 = a: (tomar (n-1) bs)

doble [] = []
doble (a:bs) = a:a:(doble bs)

