
module Ch12TypeclassTest where

class (Eq a, Enum a, Bounded a) => Cyclic a where
  composeNext :: a -> a -> a
  cycSucc :: a -> a -> a


  composeNext x1 x2 = composeNext' 0 x1 x2
    where
      composeNext' n x1 x2
        | x1 == x2 = cycSuccN n x2
        | otherwise = composeNext' (n+1) (cycSucc x1) x2
	

      cycSuccN 0 x = x
      cycSuccN n x = cycSuccN (n-1) (cycSucc x)
	
  cycSucc x
    | x == maxBound = minBound
    | otherwise = succ x



