import Data.Time

data DatabaseItem = DbString String
  | DbNumber Integer
  | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
      (fromGregorian 1911 5 1)
      (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello, world!"
    , DbDate (UTCTime
      (fromGregorian 1921 5 1)
      (secondsToDiffTime 34123))
  ]

--1. Write a function that filters for DbDate values and returns a list
--of the UTCTime values inside them.
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate db = foldr f [] db
  where
    -- if we have a DbDate, cons it
    f (DbDate x) acc = x : acc
    -- otherwise just return the acc
    f _ acc = acc

--2. Write a function that filters for DbNumber values and returns a list
--of the Integer values inside them.
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber db = foldr f [] db
  where
    f (DbNumber num) acc = num : acc
    f _ acc = acc

--3. Write a function that gets the most recent date.
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = f . filterDbDate
               where f (x:xs) = foldr (\a b -> if a > b then a else b) x xs

--4. Write a function that sums all of the DbNumber values.
sumDb :: [DatabaseItem]-> Integer
sumDb = f . filterDbNumber
          where f xs = foldr (+) 0 xs

--5. Write a function that gets the average of the DbNumber values.
-- You'll probably need to use fromIntegral
-- to get from Integer to Double.
avgDb :: [DatabaseItem] -> Double
avgDb = f . filterDbNumber
  -- where f xs = foldr (\a b -> (fromIntegral a) / b) (fromIntegral (length xs)) xs
  where f xs = (fromIntegral (foldr (+) 0 xs)) / (fromIntegral (length xs))