operacje typu IO a -> IO a

### funkcje

- getLine :: IO String
- putStrLn :: String -> IO ()

### operatory

- (>>) :: IO a -> IO b -> IO b
  np.

  ```haskell
    putStrLn "Hello" >> putStrLn "World"
  ```

- (>>=) :: IO a -> (a -> IO b) -> IO b
  np.

  ```haskell
  getLine >>= putStrLn
  ```

- do-notation
  ```haskell
  do
  x <- getLine
  putStrLn $ x ++ "!"
  ```

## Na kolejną kartówke!

przepisać z do-notation na notację z operatorami

```haskell
do
  x <- getLine
  y <- getLine
  putStrLn $ x ++ y
```

```haskell

```

## functor, applicative, monad

functor udostępnia funkcje fmap

```haskell
fmap :: (a -> b) -> f a -> f b
maybe :: a -> (b -> a) -> Maybe b -> a
f::r -> a
g:: a -> b
g.f:: r -> b
```

## 2 zadanie na kartówke

dobrać konstrukcje funktorów aplikatywnych do typów

fmap
pure
(<\*>)
