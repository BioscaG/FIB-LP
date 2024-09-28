myFoldl::(a->b->a)->a->[b]->a
myFoldl f x0 [] = x0
myFoldl f x0 (x:xs) = myFoldl f (f x0 x) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


myFoldr::(a->b->a)->a->[b]->a
myFoldr f x0 [] = x0
myFoldr f x0 (x:xs) = f (myFoldr f x0 xs) x
