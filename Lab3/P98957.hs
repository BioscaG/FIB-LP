ones :: [Integer]
ones = repeat 1

nats :: [Integer]
nats = 0: map (+1) nats

ints :: [Integer]
ints = 0: map next ints
    where 
        next x
            | x > 0 = -x
            | x < 0 = -x + 1
            | otherwise = 1

triangulars :: [Integer]
triangulars = map aux [0..]
    where aux num = foldl (+) 0 [0..num]

triangularsbest :: [Integer]
triangularsbest = 0 : zipWith (+) triangularsbest [1..]

factorials :: [Integer]
factorials = map aux [0..]
    where aux num = foldl (*) 1 [1..num]

{-
Hacer la funcion merge que es para que juntar dos listas y ordenarlas
-}

fibs :: [Integer]
fibs = map aux iterate (+1) 0
