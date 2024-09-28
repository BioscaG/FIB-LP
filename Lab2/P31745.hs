flatten::[[Int]] -> [Int]
flatten n = foldl (++) [] n

myLength::String -> Int
myLength [] = 0
myLength (_:xs) = myLength xs + 1



myReverse :: [Int] -> [Int]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


myLengthInt:: [Int] -> Int
myLengthInt [] = 0
myLengthInt (_:xs) = myLengthInt xs + 1


countIn :: [[Int]] -> Int -> [Int]
countIn list x = map number list 
    where number listn = myLengthInt $ filter (==x) listn 

firstWord :: String -> String
firstWord phrase = takeWhile (/=' ') $ dropWhile (==' ') phrase

