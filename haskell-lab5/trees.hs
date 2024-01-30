data Tree a
  = Node a (Tree a) (Tree a)
  | Leaf

paths :: Tree a -> [[a]]
paths Leaf = []
paths (Node a lt rt) = concat $ ([(a :)] *>) <$> (fmap paths [lt, rt])

exampleTree :: Tree Int
exampleTree = Node 1 (Node 2 (Node 4 Leaf Leaf) (Node 5 Leaf Leaf)) Leaf

examplePaths :: [[Int]]
examplePaths = paths exampleTree

main :: IO ()
main = print examplePaths
