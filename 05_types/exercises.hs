{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- simple example
example = 1

oneA = (* 9) 6
oneB = head [(0,"doge"),(1,"kitteh")]
oneD = if False then True else False
oneE = length [1, 2, 3, 4, 5]

--x = 5
--y = x + 5
--w = y * 10
--
--z y = y * 10

bigNum = (^) 5
wahoo = bigNum 10

--x = print
--y = print "woohoo!"
--z = x "hello world"

--a = 12 + b
--b = 10000 * a

functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y =
  if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB a

a :: (a -> c) -> a -> a
a b t = t

a' :: (a -> b) -> a -> b
a' aToB a = aToB a

fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if (x < y)
       then fstString x
       else sndString y
       where x = "Singin"
             y = "Somewhere"

f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g $ f x

data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e a = w $ q a

data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)

munge :: (x -> y)
      -> (y -> (w, z))
      -> x
      -> w
munge xToY yToTupleWz x = fst $ yToTupleWz (xToY x)