
module Ch02FunctionBasic where

data Person = Person { age :: Int, name :: String }
  deriving Show

p :: Person
p = Person { age = 23, name = "chris" } 
