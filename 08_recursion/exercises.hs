module Chapter8 where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-- fill in the types
flippy = flip cattyConny

appedCatty = cattyConny "woops"

frappe = flippy "haha"

--Write a function that recursively sums all numbers from 1 to n,
--n being the argument. So that if n was 5, you’d add 1 + 2 + 3 + 4 +
--5 to get 15. The type should be (Eq a, Num a) => a -> a.
addTo :: (Eq a, Num a) => a -> a

addTo 1 = 1
addTo n = n + (addTo (n-1))

--Write a function that multiplies two integral numbers using
--recursive summation. The type should be (Integral a) => a ->
--a -> a.
multInt :: (Integral a) => a -> a -> a

multInt 1 n = n
multInt n 1 = n
multInt n m = m + multInt (n-1) m

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d count
         | n < d = (count, n)
         | otherwise = go (n - d) d (count + 1)

data DividedResult =
  Result Integer
  | DividedByZero
  deriving (Show)

dividedByX :: Integral a => a -> a -> (DividedResult, a)
dividedByX a 0 = (DividedByZero, a)
dividedByX a b
  | (a < 0) && (b < 0) = dividedByX (a * (-1)) (b * (-1))
  | (a < 0) = negateR $ dividedByX (a * (-1)) b
  | (b < 0) = negateR $ dividedByX a (b * (-1))
  | otherwise = go a b 0
                  where go n d count
                         | n < d = (Result count, n)
                         | otherwise = go (n - d) d (count + 1)

negateR (Result r, rest) = (Result ((-1) * r), rest)

-- ⎧
-- { n − 10
-- M C(n) = ⎨
-- {
-- ⎩ M C(M C(n + 11))
-- if n > 100
-- if n ≤ 100
mc91 :: Integral a => a -> a
mc91 x
  | x > 100 = x -10
  | otherwise = mc91 $ mc91 (x + 11)
