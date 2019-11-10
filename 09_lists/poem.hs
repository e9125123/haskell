module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\
  \ symmetry?"

sentences = firstSen ++ secondSen
  ++ thirdSen ++ fourthSen

--The code putStrLn sentences should print:
--Tyger Tyger, burning bright
--In the forests of the night
--What immortal hand or eye
--Could frame thy fearful symmetry?

-- Implement this
myLines :: String -> [String]
myLines str = go (dropWhile (=='\n') str) []
  where go s l
          | length s == 0 = l
          | otherwise = go (dropWhile (=='\n') (dropWhile (/='\n') s)) (l ++ [(takeWhile (/='\n') s)])

shouldEqual = [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main =
  print $
    "Are they equal? "
    ++ show (myLines sentences
    == shouldEqual)