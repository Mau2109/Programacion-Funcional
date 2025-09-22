data Color = Azul | Verde | Amarillo deriving Show

--- cambiar es el nombre de la funcion
--- cambiar tiene aridad 1 (numero de argumentos)
--- cambiar tiene como dominio Color
--- cambiar tiene como codominio Color
--- Las definiciones constan de varios casos
--- tratados por medio de cláusulas
--- y deben de sr exclusivas, exhaustivas y no
--- redundantes.

---cambiar :: Color -> Color
---Signatura o modo flecha
cambiar Azul = Verde
cambiar Amarillo = Azul
cambiar Verde = Amarillo

data Ropa = Pantalon | Falda | Jeans | Gorra deriving Show
data Estilo = Bueno | Mala deriving Show

precio Pantalon = 100
precio Falda = 20
precio Jeans = 90
precio Gorra = 40

estilo Pantalon verde = Bueno
estilo Gorra Azul = Mala

