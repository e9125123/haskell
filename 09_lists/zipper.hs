module Zipper where

zip' :: [a] -> [b] -> [(a, b)]
zip' xs [] = []
zip' [] ys = []
zip' (x:xs) (y:ys) = (x, y) : (zip' xs ys)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' aToBToC (a:as) (b:bs) = (aToBToC a b) : (zipWith' aToBToC as bs)

-- 3. Rewrite your zip in terms of the zipWith you wrote.
zip'' :: [a] -> [b] -> [(a, b)]
zip'' xs ys = zipWith' (\a -> \b -> (a, b)) xs ys