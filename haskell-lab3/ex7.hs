sumWith g [] = 0
sumWith g (x : xs) = g x + sumWith g xs -- (+) (g x) (sumWith g xs)

prodWith g [] = 1
prodWith g (x : xs) = g x * prodWith g xs -- (*) (g x) (prodWith g xs)

sumWith' :: (Num a) => (a -> a) -> [a] -> a
sumWith' = go 0
  where
    go acc g [] = acc
    go acc g (x : xs) = go (g x + acc) g xs

prodWith' :: (Num a) => (a -> a) -> [a] -> a
prodWith' = go 1
  where
    go acc g [] = acc
    go acc g (x : xs) = go (g x * acc) g xs

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' addToAcc initial = go
  where
    go [] = initial
    go (x : xs) = addToAcc x (go xs)

sumWith'' g = foldr' (\x acc -> g x + acc) 0

prodWith'' g = foldr' (\x acc -> g x * acc) 1

foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' addAccToX = go
  where
    go init [] = init
    go init (x : xs) = go (addAccToX init x) xs

sumWith''' g = foldl' (\acc x -> acc + g x) 0

prodWith''' g = foldl' (\acc x -> acc * g x) 1

-- solve with zip or zipWith
isSortedAsc :: Ord a => [a] -> Bool
isSortedAsc x = and $ zipWith (<=) x (tail x)