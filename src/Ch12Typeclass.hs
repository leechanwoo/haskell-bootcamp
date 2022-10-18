
module Ch12Typeclass where

data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Eq, Ord, Enum, Bounded, Show)



class Equal a where
  (===) :: a -> a -> Bool


data NumType = One | Two | Three
instance Equal NumType where
  One === One = True
  Two === Two = True
  Three === Three = True
  _ === _ = False


data CharType = A | B | C | D
instance Equal CharType where
  A === A = True
  B === B = True
  C === C = True
  D === D = True
  _ === _ = False


data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving Show
