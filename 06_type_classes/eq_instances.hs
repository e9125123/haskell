module EqInstances where

data TisAnInteger =
  TisAn Integer
  deriving Show

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn y) = x == y

data TwoIntegers =
  Two Integer Integer

instance Eq (TwoIntegers) where
  (==) (Two x y) (Two x1 y1) = x == x1 && y == y1

data StringOrInt =
  TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt b) = a == b
  (==) (TisAString a) (TisAString b) = a == b
  (==) _ _ = False

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair x y) (Pair x1 y1) = x == x1 && y == y1

data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x1 y1) = x == x1 && y == y1
  
data Which a =
  ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne y) = x == y
  (==) (ThatOne x) (ThatOne y) = x == y
  (==) _ _ = False

data EitherOr a b =
  Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello x1) = x == x1
  (==) (Goodbye x) (Goodbye x1) = x == x1
  (==) _ _ = False
