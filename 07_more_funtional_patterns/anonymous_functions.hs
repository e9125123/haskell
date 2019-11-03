module Anon where

mTh x y z = x * y * z
mTh1 x y = \z -> x * y * z
mTh2 x = \y -> \z -> x * y * z
mTh3 = \x -> \y -> \z -> x * y * z