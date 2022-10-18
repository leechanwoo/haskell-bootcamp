
module Ch06RecursiveFunction where

here :: IO ()
here = putStrLn "Chapter 6. Recursive Function"


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


getSumOfAge :: [(Int, Person)] -> Int
getSumOfAge [] = 0
getSumOfAge (p1:ppl) = let fstAge = getAge p1 in
                         case ppl of
                           [] -> fstAge
                           (p2:ppl') -> let sndAge = getAge p2 in 
                             fstAge + sndAge
  where
    getAge :: (Int, Person) -> Int
    getAge person = let (i, p) = person in age p



extractAges :: [(Int, Person)] -> [Int]
extractAges [] = []
extractAges (p:ppl) = let pAge = getAge p in 
                      if pAge > 0 then pAge : extractAges ppl
                                  else extractAges ppl
  where
    getAge :: (Int, Person) -> Int
    getAge person = let (i, p) = person in age p
