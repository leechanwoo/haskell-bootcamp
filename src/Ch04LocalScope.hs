
module Ch04LocalScope where

data Person = Person { age :: Int, name :: String } deriving Show


haskell :: Person
haskell = Person { age = 53, name = "haskell" }

turing :: Person
turing = Person { age = 20, name = "Turing" }

dummy :: Person
dummy = Person { age = -1, name = "Dummy" }

people :: [Person]
people = [haskell, turing, dummy]



indexedPeople :: [(Int, Person)]
indexedPeople = [(0, haskell), (1, turing), (2, dummy)]

getFirstPerson :: [(Int, Person)] -> Person
getFirstPerson [] = dummy
getFirstPerson ((i,person):people) = person

getSecondPerson :: [(Int, Person)] -> Person
getSecondPerson [] = dummy
getSecondPerson ((i, p):ppl) = case ppl of
                                 [] -> p
                                 ((i', p'):ppl') -> p'
