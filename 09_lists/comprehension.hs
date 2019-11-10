module Comprehension where

mySqr = [x^2 | x <- [1..10]]

ev = [x | x <- mySqr, rem x 2 == 0]

l50 = [(x, y) | x <- mySqr,
          y <- mySqr,
          x < 50, y > 50]

t5 = take 5 [ (x, y) | x <- mySqr,
                  y <- mySqr,
                  x < 50, y > 50 ]