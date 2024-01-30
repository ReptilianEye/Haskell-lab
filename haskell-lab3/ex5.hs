import Data.Char (isUpper)

-- onlyEven [] = []
-- onlyEven (x : xs)
--   | x `mod` 2 == 0 = x : onlyEven xs
--   | otherwise = onlyEven xs

-- onlyOdd [] = []
-- onlyOdd (x : xs)
--   | x `mod` 2 == 1 = x : onlyOdd xs
--   | otherwise = onlyOdd xs

-- onlyUpper [] = []
-- onlyUpper (x : xs)
--   | isUpper x = x : onlyUpper xs
--   | otherwise = onlyUpper xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x : xs)
  | f x = x : filter' f xs
  | otherwise = filter' f xs

onlyEven = filter' (\x -> x `mod` 2 == 0)

onlyOdd arr = filter' (\x -> x `mod` 2 == 1) arr

onlyUpper = filter' isUpper

-- Zmodyfikować powyższe wyrażenia tak, aby nie zawierały nawiasów (użyć . i/lub $)
-- rewrite without brackets
onlyEven' = filter' $ \x -> x `mod` 2 == 0

onlyOdd' = filter' $ \x -> x `mod` 2 == 1

onlyUpper' = filter' isUpper
