module Reverse where

rvrs :: String -> String
rvrs s =  drop 9 s ++ sp ++ take 2 (drop 6 s) ++ sp ++ take 5 s
     where sp = " "

main :: IO ()
-- main = print (rvrs "Curry is awesome")
main = print $ rvrs "Curry is awesome"