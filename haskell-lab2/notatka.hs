-- carring
add::Int -> Int -> Int 
add x y = x + y

(+) 3 5 = 8
(+) 3 -- dodaje 3 do brakujacego argumentu

(a,b) -> c
to samo co
a -> b -> c
nie to samo co
(a,b) -> c

(^2) - -- funcja podnosi do kwadratu brakujcy argument

seq:: a -> b -> b
-- seq -- wymusza obliczenie pierwszego argumentu
-- :sp -- pokazuje typ

-- na kartkowce:
-- zad 1 z czesci pierwszej z funkcjami (partial aplication )
-- kolejne z list i rekursji
-- zad 2 zadanie z sekcji 4) (head, init...)
-- zad 3 list comprehension
-- zad 4 zadanie z rekursji

-- head - first element
-- tail - all but first element
-- last - last element
-- init - all but last element

-- 0: [1,2,3] --> [0,1,2,3]
-- [1,2,3] ++ [4] --> [1,2,3,4]
-- [0,1,2,3] !! 2 --> 2 ([0,1,2,3][2])

-- fst - first element of a pair
-- snd - second element of a pair
-- null - checks if a list is empty

-- take 2 [1,2,3,4,5] -- [1,2]
-- drop 2 [1,2,3,4,5] -- [3,4,5]

-- any (>2) [1,2,3] -- True
-- all (>2) [1,2,3] -- False

-- zip [1,2,3] ['a','b','c'] --> [(1,'a'),(2,'b'),(3,'c')]

-- splitAt 2 [1,2,3,4,5] --> ([1,2],[3,4,5])

-- 2 `elem` [1,2,3] --> True (checks if 2 is in the list)

-- minimum [1,2,3] --> 1
-- maximum [1,2,3] --> 3
-- sum [1,2,3] --> 6
-- product [4,2,3] --> 24