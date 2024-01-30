data Tree a = Node (Tree a) a (Tree a) | Leaf

sumSq :: Num a => Tree a -> a
sumSq Leaf = 0
sumSq (Node l x r) = x*x + sumSq l + sumSq r

data Box a = MkBox { valueInside :: a }

instance Show a => Show (Box a) where
    show (MkBox {valueInside = x}) = "MkBox " ++ show x



data Cart2DVec'' a = MkCart2DVec'' {x :: a, y :: a}

data List a = EmptyL | Cons a (List a) deriving (Show)

head' :: List a -> a
head' EmptyL = error "head': the empty list has no head!"
head' (Cons x xs) = x

-- Cart3DVec a = Cart3DVec a a a
-- Zdefiniować funkcje dostępowe np . xCoord3D

data Cart3DVec' a = Cart3DVec' {x' :: a, y' :: a, z' :: a}

record = Cart3DVec' {x' = 1, y' = 2, z' = 3}
