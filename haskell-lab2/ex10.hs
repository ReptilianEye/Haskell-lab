fst2Eq :: Eq a => [a] -> Bool
fst2Eq (x : y : _) | x == y = True
fst2Eq _                    = False

fstDivSeq :: [Int] -> Bool
fstDivSeq (x : y : _) = y `mod` x == 0
fstDivSeq _                    = False

