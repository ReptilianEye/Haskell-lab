data MyInt = MkMyInt Int

instance Eq MyInt where
  (==) (MkMyInt i1) (MkMyInt i2) = i1 == i2

-- instance Eq MyInt where
--   (/=) (MkMyInt i1) (MkMyInt i2) = i1 /= i2

newtype MyInt2 = MkMyInt2 Int


data Box a = MkBox { value::a, name::String }

instance Show a => Show (Box a) where
  show (MkBox {value = x, name = n}) = "MkBox " ++ show x ++ "name " ++ show n

data MyRecord = MyRecord { field1 :: String, field2 :: String }

