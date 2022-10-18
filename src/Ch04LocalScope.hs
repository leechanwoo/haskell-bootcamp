
module Ch04LocalScope where

here :: IO ()
here = putStrLn "Chapter 4. Local Scope"


data Person = Person { age :: Int, name :: String }
  deriving Show

dummy = Person { age = -1, name = "Dummy" }

people :: [Person]
people = [ Person { age = 53, name = "haskell" }
         , Person { age = 20, name = "Turing" }
         , dummy
         ]


indexedPeople :: [(Int, Person)]
indexedPeople = zip [0..] people


getFirstPerson :: [(Int, Person)] -> Person
getFirstPerson [] = dummy
getFirstPerson (p:ppl) = case p of
                           (i, p') -> p'


getSecondPerson :: [(Int, Person)] -> Person
getSecondPerson [] = dummy
getSecondPerson ((i, p):ppl) = case ppl of
                                 [] -> p
                                 ((i', p'):ppl') -> p'


