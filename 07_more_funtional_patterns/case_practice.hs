module CasePractice where

-- functionC x y = if (x > y) then x else y
functionC :: (Ord a) => a -> a -> Bool
functionC x y =
  case (x > y) of
    True -> True
    False -> False

-- ifEvenAdd2 n = if even n then (n+2) else n
ifEvenAdd2 :: Integer -> Integer
ifEvenAdd2 n =
  case isEven of
    True -> n + 2
    False -> n
    where isEven = (mod n 2) == 0

nums :: (Ord a, Num a) => a -> a
nums x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0