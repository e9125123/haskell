--{-# LANGUAGE FlexibleInstances #-}
--
--class TooMany a where
--  tooMany :: a -> Bool
--
--instance TooMany (Int, String) where
--  tooMany (n, _) = n > 42

--2. Make another TooMany instance for (Int, Int). Sum the values
--together under the assumption this is a count of goats from two
--fields.
--{-# LANGUAGE FlexibleInstances #-}
--
--class TooMany a where
--  tooMany :: a -> Bool
--
--instance TooMany (Int, Int) where
--  tooMany (x, y) = (+) x y > 42

--3. Make another TooMany instance, this time for (Num a, TooMany a)
-- => (a, a). This can mean whatever you want, such as summing
--the two numbers together.
{-# LANGUAGE FlexibleInstances #-}

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany n = n > 42

instance (Num a, TooMany a) => TooMany (a, a) where
  tooMany (x, y) = tooMany (x + y)