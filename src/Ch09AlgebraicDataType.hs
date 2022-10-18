
module Ch09AlgebraicDataType where

here :: IO ()
here = putStrLn "Chapter 9. Algebraic Data Type"


data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Eq, Ord, Enum, Bounded, Show)



data Person = Person { age :: Int, name :: String }
  deriving Show




