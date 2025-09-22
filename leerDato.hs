import Data.Char

main = do
     putStrLn "---------Rifate con el dato:    "
     x <- getLine
     let y = read x::Int
     putStrLn "Aqui esta tu dato pero al doble mi chavo :"
     putStrLn (show (y+y))
     putStrLn (show (y*1))
     putStrLn (show (y*2))
     putStrLn (show (y*3))
     putStrLn (show (y*y*y))
     putStrLn "Dame la cadena a encriptar:"
     c <- getLine
     putStrLn "cuando sumar:"
     s <- getLine
     let z = read s::Int
     putStrLn ( map chr (map (+z) (map ord c)))

--- Otro ejercicio: Toman una cadena o mensaje
--- map chr (map (+1) (map ord M)) (*)


--- Escriba un programa que tome una cadena como mensaje y la encripte
--- segun (*)



     