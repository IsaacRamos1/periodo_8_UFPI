-- mais um tipo de estrutura de dados
-- mais praticidade e facilita o processo de programação
-- é um vetor? mais ou menos. Assim, como o vetor, são tipos homogêneos. Mas assim,
-- a lista heterogênea é um upgrade da lista [[lista], [lista]]
-- em haskell existem os vetores tembém. São listas com características especiais como filas.
-- Em lista existe sua versão vazia e não vazia.

    -- vazia [] - é polimórfica pois não possui nada
    -- não vazia (<num>:<num>) - não é polimórfica pois ela possui uma cabeça com um tipo setado

somaLista :: [Int] -> Int
somaLista [ ] = 0
somaLista (h : t) = h + somaLista t

pertence :: Int -> [Int] -> Bool
pertence b [ ] = False
pertence b (a:x) = (b == a) || pertence b x