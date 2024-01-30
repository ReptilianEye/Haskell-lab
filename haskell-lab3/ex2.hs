import Distribution.Simple.Program.HcPkg (list)

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x : xs) = x + sum' xs

sumSqr [] = 0
sumSqr (x : xs) = x ^ 2 + sumSqr xs

sumWith :: (Num a) => (a -> a) -> [a] -> a
sumWith f [] = 0
sumWith f (x : xs) = f x + sumWith f xs

sum = sumWith (\x -> x)

sumSqr' = sumWith (\x -> x ^ 2)

sumCube = sumWith (\x -> x ^ 3)

sumAbs = sumWith (\x -> abs x)

-- Wykorzystując sumWith (bez definiowania nowej funkcji) obliczyć w GHCi
-- sume of 1 do 15 z i^5
-- sumWith (\x -> x^5) [1..15]

listLength = sumWith (\x -> 1)