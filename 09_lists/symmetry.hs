module Symmetry where

myWords :: String -> [String]
myWords s =
  go s []
    where go r list
            | (r == "") = list
            | otherwise = go (drop 1 (dropWhile (/= ' ') r)) (list ++ [(takeWhile (/= ' ') r)])
--myWords str = go (dropWhile (==' ') str) []
--  where go s arr
--          | length s == 0 = arr
--          | otherwise = go (dropWhile (==' ') (dropWhile (/=' ') s)) (arr ++ [(takeWhile (/=' ') s)])
--myWords "sheryl wants fun"
--["sheryl", "wants", "fun"]