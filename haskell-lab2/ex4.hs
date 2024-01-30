isPalindrome :: [Char] -> Bool
isPalindrome s = s == reverse s

-- getElemAtIdx :: [a] -> Int -> a
-- getElemAtIdx l i = l !! i

getElemAtIdx :: [a] -> Int -> a
getElemAtIdx l i = if (i==0) then head l
                else getElemAtIdx (drop i l) 0

-- capitalize :: [Char] -> [Char]
-- capitalize w = toUpper (head w) : (tail w)