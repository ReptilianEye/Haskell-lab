fib :: (Num a, Eq a) => a -> a
fib n = if n==0 || n==1 then n 
        else fib(n-1) + fib(n-2)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs) :: [Int]
fib2 :: Int -> Int
fib2 n = fibs !! n

sum':: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

prod' :: Num a => [a] -> a
prod' [] = 0
prod' (x:xs) = x* prod' xs

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

or' ::  [Bool] -> Bool
or' [] = False
or' (x:xs) = x || or' xs

and' ::  [Bool] -> Bool
and' [] = True
and' (x:xs) = x && or' xs

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' toFind (x:xs) = toFind==x || elem' toFind xs

doubleAll :: Num t => [t] -> [t]
-- doubleAll l = [x*2 | x<- l]
doubleAll [] = []
doubleAll (x:xs) = x*2 : doubleAll xs

squareAll :: Num t => [t] -> [t]
-- squareAll l = [x^2 | x <- l]
squareAll [] = []
squareAll (x:xs) = x^2 : squareAll xs


sum'2 :: Num a => [a] -> a
sum'2 xs = loop 0 xs
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs

prod'2 :: Num a => [a] -> a
-- prod'2 [] = 0
prod'2 = loop 1
    where loop prod [] = prod
          loop prod (x:xs) = loop (prod*x) xs

length'2 :: [a] -> Int
length'2 = loop 0
    where loop len [] = len
          loop len (x:xs) = loop (len+1) xs