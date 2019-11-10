module Split where

split :: Char -> String -> [String]
split c str = go (dropWhile (==c) str) []
  where go s l
          | length s == 0 = l
          | otherwise = go (dropWhile (==c) (dropWhile (/=c) s)) (l ++ [(takeWhile (/=c) s)])

myWordsSym :: String -> [String]
myWordsSym = split ' '

myWordsPoem :: String -> [String]
myWordsPoem = split '\n'

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\
  \ symmetry?"

sentences = firstSen ++ secondSen
  ++ thirdSen ++ fourthSen

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main = do
  print $
    "Are they equal? "
    ++ show (myWordsPoem sentences
    == shouldEqual)
  print $
    "With sym; "
    ++ show (myWordsSym sentences)

