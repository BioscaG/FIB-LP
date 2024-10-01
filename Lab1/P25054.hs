myLength:: [Int] -> Int
myLength [] = 0
myLength (_:xs) = myLength xs + 1 
