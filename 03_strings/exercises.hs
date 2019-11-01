module Exercises where

a :: String -> String
a x =  x

b :: String -> Char
b  x = x !! 4

c :: String -> String
c x = drop 10 x

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Haskell is awesome" !! x

rvrs :: String
rvrs =  drop 9 s ++ sp ++ take 2 (drop 6 s) ++ sp ++ take 5 s
     where s = "Curry is awesome"
           sp = " "