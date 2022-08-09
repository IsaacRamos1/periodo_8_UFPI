{-Q1-}
imprimeTab :: Int -> IO()
{- Recebe uma String e retorna um print chamando as funções cabecalho concatenado com imprimeSemanas concatenado com imprimeTotal concatenado com imprimeMedia.-}
cabecalho :: String
{-Função que recebe uma String e define a variave cabecalho-}
imprimeSemanas :: Int -> String 
{-Função que recebe um inteiro e retorna uma string que define imprimeSemanas e chama recursivamente se for com os paremetros 0 ou n-}
imprimeSemana :: Int -> String
{-Função que recebe um inteiro e retorna uma String em que chama a função show e show com parametro a funnção vendas-}
vendas :: Int -> Int
{-Função que retorna um inteiro e retorna um inteiro em que define valores de venda de 0 a 3-}
imprimeTotal :: Int -> String
{-Função funciona de forma semelhante a imprimeSemanas-}
imprimeMedia :: Int -> String
{-Função funciona de forma semelhante a imprimeSemanas-}
mediadeVendas :: Int -> Float 
{-Função que recebe um inteiro e retorna um float em que chama a função totaldeVendas dividido por n+1-}
totaldeVendas :: Int -> Int
{-Função que recebe um inteiro e retorna um inteiro em que se n == 0 entao chama a função vendas 0 senão chama a função totaldeVendas concatenado com vendas-}
imprimeTabJ :: Int -> IO ()
{-Função semelhante a imprimeTab-}
imprimeSemanasJ :: Int -> String
{-Função semelhante a imprimeSemanas-}
imprimeSemanaJ :: Int -> String
{-função que recebe um inteiro e retorna uma String em que chama a função Rjustify com os parametros offset(que por meio do where é definido por um inteiro) e a função show concatenado com rJustify com os parametros offset show(vendas n) -}
imprimeTotalJ ::Int -> String
{-Função semelhante a imprimeTabJ-}
imprimeMediaJ :: Int -> String 
{-Função semelhante a imprimeTabJ-}
rJustify :: Int -> String -> String 
{-Função semelhante a totaldeVendas-}
imprimeespacos :: Int -> String
{-Função semelhante a imprimeSemanas-}
{-Q2-}
{-Enumeração-}
vendas :: Int -> Int 
{-Caso-}
totaldeVendas :: Int -> Int 
{-Composição-}
imprimeSemanaJ :: Int -> String 
{-Recursão-}
imprimeSemanas :: Int -> String
{-Intencionalidade-}
imprimeTab :: Int -> IO()
{-Q3-}
    {-Função que recebe um cartesiano do tipo (int,(int,int) e retorna um inteiro)
    se o first ==1 entao o first recebe com parametro (second z) concatenado com second(second z)
    se first == 2 entao faz o acima com o sina de menos
    senão retorna 0-}
{-Q4-}
    {-função que imprimme e le altura h e sexo s respectivamente e se o s for minustucpo ou maiusculos calcula o peso ideal pela função show
    se s for m maiusculo ou minuscuo imprime o peso idea por meio da função show
    senão imprime "Sexo invallido"-}
{-Q5-}
media :: Int -> Int -> Int -> String
media n p m 
    | (n + p + m)`div`3 >= 7 = "Aprovado"
    | (n + p + m)`div`3 >= 3 && (n + p + m)`div`3 < 7 = "Final"
    | (n + p + m)`div`3 < 3 = "Reprovado" 
