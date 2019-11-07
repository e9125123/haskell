module Exercises where

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d = xLast `mod` 10

tensDigit' :: Integral a => a -> a
--tensDigit' x = snd (divMod (div x 10) 10)
tensDigit' x = mod (div x 10) 10

hunsDigit :: Integral a => a -> a
hunsDigit x = mod (div x 100) 10

xDigit :: Integral a => a -> a -> a
xDigit x y = mod (div y (10^x)) 10

ones = xDigit 0
tens = xDigit 1
huns = xDigit 2

foldBool :: a -> a -> Bool -> a
foldBool x y b
  | (b) = y
  | (not b) = x

--foldBool x y b =  case b of
--                    True -> y
--                    False -> x

g :: (a -> b) -> (a, c) -> (b, c)
g aToB (a, c) = (aToB a, c)

