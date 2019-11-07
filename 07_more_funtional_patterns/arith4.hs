module Arith4 where

roundTrip :: (Show a, Read a) => a -> a
--roundTrip a = read (show a)
roundTrip a = read . show $ a

roundTrip1 :: (Show a, Read b) => a -> b
roundTrip1 = read . show

main = do
  print (roundTrip 4)
  print (id 4)
  print (roundTrip1 4 :: Int)