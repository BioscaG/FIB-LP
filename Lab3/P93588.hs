myMap :: (a->b) -> [a]->[b] 
myMap f list = [f x | x <- list]

myFilter :: (a->Bool) -> [a] -> [a]
myFilter f list = [x | x <- list, f x]

myZipWith :: (a->b->c)->[a]->[b]->[c]
myZipWith f list1 list2 = [f x y | (x, y) <- zip list1 list2]

thingify :: [Int] -> [Int] -> [(Int, Int)] 
thingify list1 list2 = [(x, y) | x <- list1, y<- list2, (mod) x y == 0]

factors:: Int -> [Int]
factors num =  [x | x<-[1..num], (mod) num x == 0]