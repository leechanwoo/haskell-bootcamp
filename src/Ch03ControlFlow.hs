
module Ch03ControlFlow where

here :: IO ()
here = putStrLn "Chapter 3. Controlflow"


data Person = Person { age :: Int, name :: String }
  deriving Show

people :: [Person]
people = [ Person { age = 53, name = "haskell" }
         , Person { age = 20, name = "Turing" }
         , Person { age = -1, name = "Dummy" }
         ]


indexedPeople :: [(Int, Person)]
indexedPeople = zip [0..] people

