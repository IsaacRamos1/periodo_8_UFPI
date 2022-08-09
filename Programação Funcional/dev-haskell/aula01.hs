mmc :: Int -> Int -> Int
--mmc x2 y2 = div (x2 * y2) (mdc x2 y2)
mmc x2 y2 
    |(x2 `mod` y2) == 0 = x2
    |(y2 `mod` x2) == 0 = y2
    |otherwise = x2 * y2

mdc :: Int -> Int -> Int
mdc x3 y3
    |x3 == y3 = x3
    |x3 > y3 = mdc (x3-y3) y3
    |otherwise = mdc y3 x3

main :: IO ()
main = do
print(mmc 16 4)

-- Prova no computador, sem internet.
-- 1 questão: vai ter um programa completo (gande mas com segundas intenções) e
--      teremos que dizer o que ele faz (um programa do PDF do vieira) quais as entradas saídas e como funciona o main() Capítulo 4
-- 2 questão: focada nos tipos de funções (Cap. 3) faça um programa por enumeração, por caso,
--      intencionalidade, composição e recursão.
-- 3 questão: programa com função predefinida (prelude) em haskell -> abs mod 
-- 4 questão: programa com o tipo cartesiano n-uplas: tuplas etc
-- 5 questão: programa com tipo definido (type-strutura) tipo abstrato.




-- FUNÇÕES POR ENUMERAÇÃO:
    -- uma função é uma associação de valores pertencentes à um grupo de partida, o domínio,
    -- com valores pertencentes a um conjunto de chegada, o contradomínio ou imagem de uma função.
    -- por exemplo: 
            -- a função booleana not tem como domínio e contradomínio o conjunto
            -- Bool = {False, True} e pode ser definida, por extensão ou enumeração, na forma:
                -- not : Bool -> Bool
                -- not (True) = False
                -- not (False) = True

-- FUNÇÃO POR INTENCIONALIDADE:
    -- outra forma é exibir uma propriedade que apenas os elementos dessa função tem. Isto
    -- significa apresentar uma regra  que informe como cada elemento do conjunto de partida
    -- deve ser processado  para que se  transforme  em um único  elemento do conjunto de
    -- chegada. 
    -- Exemplo:
        -- a função unária f que associa cada número inteiro com a sua quarta potência. O domínio
        -- e o contradomínio desta função são Z e N, respectivamente.  Sua definição segue:
        --  f : Z -> N
        --  f(n) = n**4
    -- Outro exemplo: a função ternária g que associa cada tripla de números inteiros com a soma
    -- de seus quadrados. O domínio de g é Z x Z x Z e seu contradomínio é N. DEsta forma:
    --      g : Z x Z x Z -> N
    --      g (x,y,z) = x**2 + y**2 + z**2

-- FUNÇÃO POR COMPOSIÇÃO:
    -- implica : Bool x Bool -> Bool
    -- implica (x,y) = or(not x, y)
    -- Uma função aciona um outra função, que lhe retorna valores.

-- FUNÇÃO POR CASO:
    -- sinalg : Z -> Z      casos ou estados atribuídos aos possíveis resultados da função.
    -- sinalg(x)
    --  | x > 0 = 1
    --  | x == 0 = 0
    --  | x < 0 = -1

-- FUNÇÃO POR RECURSÃO:
    --  função mdc(x, y)
    -- mdc : N+ x N+ -> N+
    -- mdc(x,y)
    --  | x == y = x
    --  | x > y = mdc(x - y, y)  aciona a mesma função por recursão até chegar à parada, para
    --  | x < y = mdc(y, x)      , assim, retornar ao valor final.


