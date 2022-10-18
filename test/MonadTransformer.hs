
module MonadTransformer where

import Control.Monad.Trans.State.Lazy
import Control.Monad.IO.Class


mtState :: State Int Int
mtState = do
  x <- get
  put $ x+1
  get


stateIO :: StateT Int IO Int
stateIO = do
  x <- get
  liftIO $ print x
  put $ x+1
  x <- get
  liftIO $ print x
  return x


scope :: Int -> StateT Int IO Int
scope v = do 
  s <- get
  let v' = v+s
  put $ s+1
  return v'
  

globalScope :: Int -> StateT Int IO Int
globalScope val = do
  s <- get
  put $ s+1
  v <- scope val
  v <- scope v
  return v
