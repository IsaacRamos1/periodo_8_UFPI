duplicaLista [] = []
duplicaLista (a:x) = 2*a : duplicaLista x 

duplicaZF lis = [2*i | i <- lis]   -- sua resposta *sempre* vai ser uma lista.
                                --", i `mod` 2 == 0" qualificadores sempre vão ser booleanos
duplicaZFpar lis = [2*i | i <- lis, i `mod` 2 == 0, i > 8]

soma2lista la lb = [i + j | i <- la, j <- lb]

somaPares listadePares = [a + b | (a, b) <- listadePares, a < b]

pares n = [ (a, b) | a <- [1 .. n], b <- [1 .. a]]

trirets n = [ (a, b, c) | a <- [2 .. n], b <- [a+1 .. n], c <- [b+1 .. n], a * a + b * b == c * c]

