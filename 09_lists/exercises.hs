module Exercises where

import Data.Char

-- given the input “HbEfLrLxO,” your function will return “HELLO.”
filterUpper :: String -> String
filterUpper = filter isUpper

-- if given the argument “julie,” it will return “Julie.”
cap :: String -> String
cap [] = []
cap (c:cs) = (toUpper c) : cs

-- give it the input “woot” it will holler back at you “WOOT.”
holler :: String -> String
holler [] = []
holler (c:cs) = (toUpper c) : (holler cs)

-- capitalize the first letter of a String and return only that letter as the result.
capFirst :: String -> Char
-- capFirst [] = ' '
-- capFirst (c:cs) = (toUpper c) : []
-- capFirst cs = toUpper . head $ cs
capFirst = toUpper . head
