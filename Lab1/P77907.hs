absValue:: Int -> Int
absValue n
    | n >= 0 = n
    | otherwise = -n

power:: Int -> Int -> Int
power _ 0 = 1
power x p = x*power x (p-1)

isPrime:: Int -> Bool 
isPrime 0 = False
isPrime 1 = False
isPrime n = aux 2
    where
        aux d 
            | d == n = True
            | mod n d /= 0 = aux (d+1)
            | otherwise = False

slowFib:: Int -> Int
slowFib n 
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = slowFib (n-1) + slowFib(n-2)

{-
quickFib:: Int -> Int
quickFib n 
    | n == 
-}