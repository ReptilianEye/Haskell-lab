-- do
--   s <- getLine
--   n <- return 3
--   putStrLn $ show n ++ s

actSeq = putChar 'A' >> putChar 'G' >> putChar 'H' >> putChar '\n'

doActSeq = do
  putChar 'A'
  putChar 'G'
  putChar 'H'
  putChar '\n'

echo1 = getLine >>= putStrLn

doEcho1 = do
  line <- getLine
  putStrLn line

echo2 = getLine >>= \line -> putStrLn $ line ++ "!"

doEcho2 = do
  line <- getLine
  putStrLn $ line ++ "!"

echo3 :: IO ()
echo3 = getLine >>= \l1 -> getLine >>= \l2 -> putStrLn $ l1 ++ l2

dialog :: IO ()
dialog =
  putStr "What is your happy number? "
    >> getLine
    >>= \n ->
      let num = read n :: Int
       in if num == 7
            then putStrLn "Ah, lucky 7!"
            else
              if odd num
                then putStrLn "Odd number! That's most people's choice..."
                else putStrLn "Hm, even number? Unusual!"

z1Do :: IO ()
z1Do = do
  s <- getLine
  n <- return 3
  putStrLn $ show n ++ s

z1 :: IO ()
z1 = getLine >>= \s -> return 3 >>= \n -> putStrLn $ show n ++ s
