
module Ch10TypePolymorphism where

here :: IO ()
here = putStrLn "Chapter 19. Type Polymorphism"


add :: Num a => a -> a -> a
add x y = x + y
