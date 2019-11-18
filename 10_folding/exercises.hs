module Exercises where

-- 1. Given the following sets of consonants and vowels:
-- stops = "pbtdkg"
-- vowels = "aeiou"
-- a) Write a function that takes inputs from stops and vowels and
-- makes 3-tuples of all possible stop-vowel-stop combina-
-- tions. These will not all correspond to real words in English,
-- b) Modify that function so that it only returns the combina-
-- tions that begin with a p.
-- c) Now set up lists of nouns and verbs (instead of stops and
-- vowels) and modify the function to make tuples represent-
-- ing possible noun-verb-noun sentences.

stops = "pbtdkg"
vowels = "aeiou"

threeTuple :: String -> String -> [(Char, Char, Char)]
threeTuple sts vws = [(s1, v, s2) | s1 <- sts,
                                    s2 <- sts,
                                    v <- vws]

threeTupleP sts vws = [(s1, v, s2) | s1 <- sts,
                                    s2 <- sts,
                                    v <- vws,
                                    s1 == 'p']

nouns = ["Fred", "House", "Cat"]
verbs = ["lives", "eats", "watches"]

threeTupleS :: [String] -> [String] -> [(String, String, String)]
threeTupleS ns vs = [(s1, v, s2) | s1 <- ns,
                                    s2 <- ns,
                                    v <- vs]

seekritFunc x =
  divMod (sum (map length (words x)))
      (length (words x))
