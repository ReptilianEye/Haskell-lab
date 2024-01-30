isPrime :: Integral t => t -> Bool
isPrime n = [i | i <- [2..n-1], n `mod` i == 0] == []

testIsPrime :: Bool
testIsPrime =
  and
    [ isPrime 2 == True
    , isPrime 3 == True
    , isPrime 4 == False
    , isPrime 5 == True
    , isPrime 6 == False
    , isPrime 7 == True
    , isPrime 8 == False
    , isPrime 9 == False
    , isPrime 10 == False
    , isPrime 11 == True
    , isPrime 12 == False
    , isPrime 13 == True
    , isPrime 14 == False
    , isPrime 15 == False
    , isPrime 16 == False
    , isPrime 17 == True
    , isPrime 18 == False
    , isPrime 19 == True
    , isPrime 20 == False
    -- Add more test cases here
    ]

main :: IO ()
main = do
  putStrLn "Running tests for isPrime..."
  if testIsPrime
    then putStrLn "All tests passed!"
    else putStrLn "Some tests failed!"