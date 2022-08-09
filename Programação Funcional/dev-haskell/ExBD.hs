import Data.Time.Clock
import Data.Time.Calendar
import Data.Time.LocalTime

type Pessoa = String
type Livro = String -- (String, [String])
type BancodeDados = [(Pessoa, Livro)]

teste = [("Felipe", "A Mente Nova do Rei"), ("Ana", "O Segredo de Luiza"),("Paulo", "O Pequeno Principe"), ("Isaac", "A Mente Nova do Rei"),("Tiago", "O Capital"),("Francisco", "O Auto da Compadecida")]

livrosEmprestados :: BancodeDados -> Pessoa -> [Livro]
livrosEmprestados [ ] _ = [ ]
livrosEmprestados ((inquilino, titulo) : resto) fulano
    | inquilino == fulano = titulo : livrosEmprestados resto fulano
    | otherwise = livrosEmprestados resto fulano

pessoasf :: BancodeDados -> Livro -> [Pessoa]
pessoasf [ ] _ = [ ]
pessoasf ((inquilino, titulo) : resto) livro
    | titulo == livro = inquilino : pessoasf resto livro
    | otherwise = pessoasf resto livro

tomaEmprestado :: BancodeDados -> Pessoa -> Livro -> BancodeDados
tomaEmprestado dBase pessoa titulo = (pessoa, titulo) : dBase

devolveLivro :: BancodeDados -> Pessoa -> Livro -> BancodeDados
devolveLivro ((p, t): r) f l
    |p == f && t == l = r
    |otherwise = (p,t) : devolveLivro r f l
devolveLivro [ ] _ _ = error "Nao ha livro emprestado"


date :: IO (Integer, Int, Int) -- :: (year, month, day)
date = getCurrentTime >>= return . toGregorian . utctDay

hour :: IO (hora, min, seg)
hour =

--acrescimo :: (Pessoa, Livro) -> BancodeDados ->
--acrescimo [ ] _ = [ ]
