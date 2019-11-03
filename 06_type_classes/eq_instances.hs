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

4. data Pair a =
Pair a a
5. data Tuple a b =
Tuple a b
6. data Which a =
ThisOne a
| ThatOne a
7. data EitherOr a b =
Hello a
| Goodbye b
