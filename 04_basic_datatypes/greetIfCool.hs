module GreetIfCool where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool coolness
    then putStrLn "yeeeaah"
  else
    putStrLn "no"
  where cool s =
             s == "fonzy"

