module Hof where

--flip :: (a -> b -> c) -> b -> a -> c
--flip f x y = f y x

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: (Num a) => a -> a
oneIsOne = dodgy 1

oneIsTwo :: (Num a) => a -> a
oneIsTwo = (flip dodgy) 2

numbers x
  | x < 0 = -1
  | x == 0 = 0
  | x > 0 = 1

--f:: Char -> String
--f = undefined
--
--g :: String -> [String]
--g = undefined
--
--x =  g . f

f :: Ord a => a -> a -> Bool
f = undefined

g = f 1

