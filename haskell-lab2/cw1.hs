sumSquares :: Num a => [a] -> a
sumSquares = loop 0
      where loop acc [] = acc
            loop acc (x:xs) = loop (acc + x^2) xs
