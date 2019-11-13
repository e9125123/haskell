module StandardFunctions where

-- 1. myOr returns True if any Bool in the list is True.
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs


--  2. myAny returns True if a -> Bool applied to any of the values in the
-- list returns True.
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = (f x) || (myAny f xs)

-- Example for validating myAny:
-- Prelude> myAny even [1, 3, 5]
-- False
-- Prelude> myAny odd [1, 3, 5]
-- True

-- 3
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs)
  | (a == x) = True
  | otherwise = myElem a xs

-- Prelude> myElem 1 [1..10]
-- True
-- Prelude> myElem 1 [2..10]
-- False

-- 4. Implement myReverse.
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

-- 5. squish flattens a list of lists into a list
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ (squish xs)

-- 6. squishMap maps a function over a list and concatenates the results.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = (f x) ++ (squishMap f xs)

--Prelude> squishMap (\x -> [1, x, 3]) [2]
--[1,2,3]

-- 7. squishAgain flattens a list of lists into a list. This time re-use the
-- squishMap function.
squishAgain :: [[a]] -> [a]
squishAgain (x:xs) = x ++ (squishMap id xs)

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x:y:[]) = if (f x y == GT) then x else y
myMaximumBy f (x:y:xs)
   | (f x y == GT) = myMaximumBy f (x:xs)
   | otherwise = myMaximumBy f (y:xs)
-- Prelude> xs = [1, 53, 9001, 10]
-- Prelude> myMaximumBy compare xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x:y:[]) = if (f x y == LT) then x else y
myMinimumBy f (x:y:xs)
   | (f x y == LT) = myMinimumBy f (x:xs)
   | otherwise = myMinimumBy f (y:xs)

--10. Using the myMinimumBy and myMaximumBy functions, write your own
--versions of maximum and minimum. If you have GHC 7.10 or newer,
--you’ll see a type constructor that wants a Foldable instance in-
--stead of a list as has been the case for many functions so far.
myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare