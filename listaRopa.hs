data Ropa = Pantalon | Camisa | Calzado deriving (Show,Eq)

data Lista = Nil | L Ropa Lista deriving Show

eje1 = L Camisa (L Pantalon (L Calzado (L Pantalon Nil)))

eje2 = L Calzado (L Camisa (L Pantalon (L Calzado (L Pantalon Nil))))
eje3 = L Camisa (L Calzado (L Camisa (L Pantalon (L Calzado (L Pantalon Nil)))))


-- Borrar un elemento de una lista
-- Borrar la primera o borrar toda ocurrencia
-- Hagamos las dos funciones. Pensemos en dicision de casos: caso vacio y
-- no vacio. Así seré mas inteligente de lo que era ayer (ya ni me acuerdo de ayer).

borrar1 elemento Nil = Nil
borrar1 elemento (L a ls)=if elemento==a then ls
                             else (L a (borrar1 elemento ls))

borrarTodo elemento Nil = Nil
borrarTodo elemento (L a ls)=if elemento==a then (borrarTodo a ls)
                             else (L a(borrarTodo elemento ls))



-- Agregar un elemento al frente de una lista
agregar elemento Nil = L elemento Nil
agregar elemento (L a ls) = L elemento (L a ls)


-- Duplicar cada elemento de una lista
duplicar Nil = Nil
duplicar (L a ls) = (L a (L a (duplicar ls)))

-- Contar los elementos de una lista
-- Contar ciertos elementos de una lista
-- Invertir una lista
-- Pegar dos listas
-- Pegar tres listas