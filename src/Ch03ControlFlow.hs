
module Ch03ControlFlow where



data Person = Person { age :: Int, name :: String }
  deriving Show

people :: [Person]
people = [ Person { age = 53, name = "haskell" }
         , Person { age = 20, name = "Turing" }
         , Person { age = -1, name = "Dummy" }
         ]


indexedPeople :: [(Int, Person)]
indexedPeople = zip [0..] people

