
module Ch12Typeclass where

data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Eq, Ord, Enum, Bounded, Show)



