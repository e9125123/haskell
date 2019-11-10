module Zipper where

zip' :: [a] -> [b] -> [(a, b)]
zip' xs [] = []
zip' [] ys = []
zip' (x:xs) (y:ys) = (x, y) : (zip' xs ys)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' = undefined

-- 3. Rewrite your zip in terms of the zipWith you wrote.