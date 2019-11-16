module Folding where

xs = map show [1..5]
y = foldr (\x y -> concat ["(",x,"+",y,")"]) "0" xs

-- 2. Write out the evaluation steps for
-- foldl (flip (*)) 1 [1..3]