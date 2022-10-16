
module Ch13Kind where

import Control.Monad.Trans.State (StateT)

class (Eq a, Enum a, Bounded a) => Cyclic a where
  composeNext :: a -> a -> a
  cycSucc :: a -> a


