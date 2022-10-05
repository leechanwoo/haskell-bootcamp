
module Ch22StatefulApp  where

import Control.Monad.Trans.State
import Control.Monad.IO.Class



data Action = Action
  deriving Show

data Store a = Store a 
  deriving Show

type App a = StateT (Store a) IO () 

data Todo = Todo

view :: App [Todo]
view = undefined
  
  

dispatcher :: Action -> App [Todo]
dispatcher action = modify $ reducer action 
  
  
reducer :: Action -> Store [Todo] -> Store [Todo]
reducer action (Store todos) = undefined

delete :: Int -> [Todo] -> [Todo] 
delete = undefined


check :: Int -> [Todo] -> [Todo]
check = undefined



app :: IO () 
app = do 
  _ <- execStateT view (Store [])
  return ()


ui :: App [Todo]
ui = undefined
  

quit :: App [Todo]
quit = undefined


consoleLog :: String -> App [Todo]
consoleLog msg = liftIO . putStrLn $ "app log        ]: " ++ msg


command :: StateT (Store [Todo]) IO String
command = do 
  liftIO $ putStr "> "
  liftIO getLine
