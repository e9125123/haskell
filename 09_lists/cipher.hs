module Cipher where

import Data.Char

caesar :: Int -> String -> String
caesar _ [] = []
caesar shiftBy cs = map (shift shiftBy) cs

shift :: Int -> Char -> Char
shift by c
  | (elem c ['a'..'z']) = rollOver 'z' ciphered
  | (elem c ['A'..'Z']) = rollOver 'Z' ciphered
  | otherwise = c
  where ciphered = (ord c + (mod by 26))

rollOver :: Char -> Int -> Char
rollOver maxLetter letterOrd
  | (letterOrd > (ord maxLetter)) = chr (letterOrd - 26)
  | otherwise = chr letterOrd

unCaesar :: Int -> String -> String
unCaesar shiftBy cs = caesar (26 - shiftBy) cs
