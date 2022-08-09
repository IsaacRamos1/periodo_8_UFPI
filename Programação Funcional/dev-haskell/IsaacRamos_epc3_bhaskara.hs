-- ALUNO: ISAAC SILVA SANTOS RAMOS
-- BHASKARA EM HASKELL

umaRaiz :: Float -> Float -> Float -> Float
umaRaiz a b c = (-b) / (2.0 * a)     -- para caso a função ter duas raízes reais e iguais

duasRaizes :: Float -> Float -> Float -> (Float, Float)
duasRaizes a b c = (d + e, d - e)
    where
        d = (-b)/(2.0*a)
        e = sqrt(b^2 - 4.0 * a * c) / (2.0 * a)

cabecalho :: Float -> Float -> Float -> String
cabecalho a b c = "A equacao \n\n\t" ++ show a ++ "*x^2" ++
                show b ++ "*x + " ++ show c ++ " = 0.0" ++ "\n\ntem "

saida :: Float -> Float -> Float -> String
saida a b c = cabecalho a b c ++ raizes a b c

raizes :: Float -> Float -> Float -> String
raizes a b c
    | b^2 > 4.0 * a * c = "duas raizes reais e distintas: " ++ show f ++ " e " ++ show s
    | b^2 == 4.0 * a * c = "duaz raizes reais e iguais: " ++ show (umaRaiz a b c)
    |otherwise = "nenhuma raiz real"
    where (f, s) = duasRaizes a b c
