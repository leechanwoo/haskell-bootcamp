
module Ch02FunctionBasic where

here :: IO ()
here = putStrLn "Chapter 2. Function Basic"

data Person = Person { age :: Int, name :: String }
  deriving Show

p :: Person
p = Person { age = 23, name = "chris" } 
