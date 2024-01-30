import Data.Char
import Data.List
import Text.PrettyPrint (TextDetails(Str))

capitalize :: [Char] -> [Char]
capitalize [] = []
capitalize (x:xs) = toUpper x : (map toLower xs)

formatStr s = foldr1 (\w s -> w ++ " " ++ s) .
          map capitalize 
          . filter (\x -> length x > 1) 
          $ words s

prodPrices p = case p of
 "A" -> 100
 "B" -> 500
 "C" -> 1000
 _   -> error "Unknown product"

products :: [String]
products = ["A","B","C"]

-- basic discount strategy
discStr1 p
 | price > 999 = 0.3 * price
 | otherwise   = 0.1 * price
 where price = prodPrices p

-- flat discount strategy
discStr2 p = 0.2 * prodPrices p

totalDiscout discStr =
 foldl1 (+) .
 map discStr .
 filter (\p -> prodPrices p > 499)

-- uzupelnij podana definicje tak aby fun dla kazdego zdania liczylo sume kwadratow slow zaczynajacych sie od K i skadajcych sie z samych wielkich liter

-- fun :: String -> Int
-- fun = sum . map ((^2) . length) . filter (all isUpper) . filter ((== 'K') . head) . words
-- fun = sum . map ((^2) . length) . filter (all isUpper)

-- Uzupełnij poniższą definicję tak, by fun dia przekazanego zdania liczyła ilość słów posiadających więcej niż dwie samogłoski
fun :: String -> Int
fun = length . filter ((>2) . length . filter (`elem` "aeiouy")) . words