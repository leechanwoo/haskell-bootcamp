
module Ch16MonadTransformer where

import Control.Monad.Trans.State
import Control.Monad.IO.Class

here :: IO ()
here = putStrLn "Chapter 16. Monad Transformer"
