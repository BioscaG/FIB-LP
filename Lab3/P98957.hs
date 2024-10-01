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

factorials :: [Integer]
factorials = map aux [0..]
    where aux num = foldl (*) 1 [1..num]