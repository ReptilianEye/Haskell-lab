myFun x = 2*x

add2T :: Num a => (a, a) -> a
add2T (x,y) = x + y

add2C :: Num a => a -> a -> a
add2C x y = x + y


add3T :: Num a => (a, a, a) -> a
add3T (a,b,c) = a+b+c

add3C :: Num a => a -> a -> a -> a
add3C a b c = a + b + c


fiveToPower_ :: Int -> Int
fiveToPower_ x = (5^x) 

_toPower5:: Num a => a -> a
_toPower5 x = (x^5)

subtrNFrom5:: Num a=> a -> a
subtrNFrom5 n = 5-n

subtr5From_::Num a=> a->a
subtr5From_ n = n-5


