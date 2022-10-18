
module Ch11ConstraintAdvanced where

here :: IO ()
here = putStrLn "Chapter 11. Constraint Advanced"

data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Eq, Ord, Enum, Bounded, Show)
