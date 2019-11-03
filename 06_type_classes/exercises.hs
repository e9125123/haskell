module Exercises where

import Data.List

data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

truth = Papu (Rocks "chomskydoz") (Yeah True)

i :: Num a => a
i = 1

-- f :: Float
-- f :: Num a => a
-- f :: Fractional a => a
f :: RealFrac a => a
f = 1.0

freud :: a -> a
freud x = x
--freud :: Ord a => a -> a

--freud' :: a -> a
freud' :: Int -> Int
freud' x = x

myX = 1 :: Int
sigmund' :: Int -> Int
--sigmund' :: Num a => a -> a
sigmund' x = myX

--import Data.List

--jung :: Ord a => [a] -> a
jung :: [Int] -> Int
jung xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB a b = aToB a == b

-- Hint: use some arithmetic operation to
-- combine values of type 'b'. Pick one.
arith :: Num b => (a -> b)
  -> Integer
  -> a
  -> b
arith aToB c a = (aToB a) + fromInteger c
