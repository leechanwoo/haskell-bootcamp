module Ch17DesignPattern where

import Control.Monad.Trans.State
import Control.Monad.IO.Class

here :: IO ()
here = putStrLn "Chapter 17. Design Pattern"


data Action a = Action1 | Action2 | Action3
  deriving Show

data Store a = Store a 
  deriving Show


type App a = StateT (Store a) IO () 


childView :: App [String]
childView = do 
  consoleLog "user input in child view: "
  msg <- command
  consoleLog msg
  dispatcher Action3
  consoleLog "Action3 called"
  

view :: App [String]
view = do 
  dispatcher Action1
  consoleLog "Action1 called"
  consoleLog "user input in root view: "

  msg <- command
  consoleLog msg

  dispatcher Action2
  consoleLog "Action2 called"

  cmd <- liftIO $ getLine
  case cmd of 
    "home" -> root
    "child" -> childView  
    "exit" -> liftIO $ return ()
    _ -> view


root :: App [String]
root = do 
  cmd <- command
  case cmd of
    "next" -> view 
    _ -> root
    
  

dispatcher :: Action String -> App [String]
dispatcher action = modify $ reducer action 
  
  
reducer :: Action String -> Store [String] -> Store [String]
reducer action (Store ss) = Store $ case action of
    Action1 -> "action1" : ss
    Action2 -> "action2" : ss
    Action3 -> "action3" : ss
 


app :: IO () 
app = do 
  Store s <- execStateT root (Store [])
  putStrLn $ "[final state    ]: " ++ show s


consoleLog :: String -> App [String]
consoleLog msg = liftIO . putStrLn $ "[app log        ]: " ++ msg


command :: StateT (Store [String]) IO String
command = liftIO getLine
