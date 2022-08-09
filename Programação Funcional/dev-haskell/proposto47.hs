divider :: Int -> Int -> Int
divider n m 
    | n == 1 || m == 1 = m
    | n `mod` m /= 0 = divider n ( m - 1 )
    | n `mod` m == 0 = divider n ( m - 1 ) + m

is_perfect :: Int -> Bool
is_perfect n = divider n (n - 1) == n


divid :: Int -> Int -> Int -- divisores
divid n m
    | n == m = n
    | n `mod` m == 0 = 0
    | otherwise = divid n (m + 1)

is_prime_number :: Int -> Bool
is_prime_number n
    | n < 2 = False
    | divid n 2 == 0 = False
    | otherwise = True

aux_func :: Int -> Int -> Int
aux_func n m
    | m < n = aux_func n (m + 1) * m
    | otherwise = n

factorial :: Int -> Int
factorial n
    | n > 1 = aux_func n 1 
    | otherwise = 1

prod :: Int -> Int -> Int
prod m n
    | m >= 0 = 0
    | m < n = (prod (m + 1) n) * m
    | m == n = m

fibbo :: Int -> Int
fibbo n
    | n <= 0 = 0
    | n == 1 = 1
    | otherwise = fibbo(n-1) + fibbo(n-2)

mod_of_division :: Int -> Int -> Int
mod_of_division n m 
    | n < m = n 
    | n == m = 0
    | n == 0 || m == 0 = 0
    | otherwise = mod_of_division (n - m) m