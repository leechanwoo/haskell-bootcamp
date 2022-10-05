
module Ch13Kind where


data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun 
  deriving (Show, Eq, Enum, Bounded)

class (Enum a, Eq a, Bounded a) => Cyclic a where
  composeNext :: a -> a -> a
  cycSucc :: a -> a


  composeNext x1 x2 = composeNext' 0 x1 x2
    where
      composeNext' n x1 x2
        | x1 == x2 = cycSuccN n x2
        | otherwise = composeNext' (n+1) (succ x1) x2
	
      cycSuccN 0 x = x
      cycSuccN n x = cycSuccN (n-1) (cycSucc x)
	
  cycSucc x 
    | x == maxBound = minBound
    | otherwise = succ x



data WeekValue a = WeekValue Week a
  deriving (Show)

instance Num a => Bounded (WeekValue a) where
  minBound = WeekValue Mon 0
  maxBound = WeekValue Mon 0

instance Eq a => Eq (WeekValue a) where
  WeekValue w x == WeekValue w' x' = w == w' && x == x'

instance Num a => Enum (WeekValue a) where
  toEnum _ = WeekValue Mon 0
  fromEnum _ = 0


