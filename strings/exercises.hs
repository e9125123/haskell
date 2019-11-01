module Exercises where

a :: String -> String
a x =  x

b :: String -> Char
b  x = x !! 4

c :: String -> String
c x = drop 10 x

thirdLetter :: String -> Char
thirdLetter x = x !! 2