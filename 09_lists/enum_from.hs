module EnumFrom where

eftBool :: Bool -> Bool -> [Bool]
eftBool False True = [False, True]
eftBool True True = [True]
eftBool True False = []
eftBool False False = [False]

--eftOrd :: Ordering
--  -> Ordering
--  -> [Ordering]
--eftOrd a b
--  | a > b = []
--  | a == b = [a]
--  | otherwise = a : (eftOrd (succ a) b)
eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd GT GT = GT : []
eftOrd GT _ = []
eftOrd start stop = go start stop []
  where go ord endOrd list
          | ord == endOrd = list ++ [ord]
          | ord == GT     = list ++ [ord]
          | otherwise     = go (succ ord) endOrd (list ++ [ord])

eftInt :: Int -> Int -> [Int]
eftInt a b
         | a > b = []
         | a == b = [a]
         | otherwise = a : eftInt (a+1) b

eftChar :: Char -> Char -> [Char]
eftChar a b
  | a > b = []
  | a == b = [a]
  | otherwise = a : eftChar (succ a) b