absInt n =
 case (n >= 0) of
   True -> n
   _    -> -n

isItTheAnswer x = 
 case x of
   "Love" -> True
   _      -> False

not' :: Bool -> Bool
not' x = 
 case x of
   True -> False
   _    -> True
or' :: (Bool, Bool) -> Bool
or' x = case x of 
    (True,_) -> True
    (_,True) -> True
    (_,_) -> False

and' :: (Bool, Bool) -> Bool
and' x = case x of 
    (True,True) -> True
    (_,_) -> False
nand' :: (Bool, Bool) -> Bool
nand' x = case x of 
    (True,True) -> False
    (_,_) -> True
xor' :: (Bool, Bool) -> Bool
xor' x = case x of 
    (True, False) -> True
    (False, True) -> True
    (_,_) -> False