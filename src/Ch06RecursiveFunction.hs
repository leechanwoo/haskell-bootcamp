
module Ch06RecursiveFunction where


-- pre script >>>

data Person = Person { age :: Int, name :: String }
  deriving Show

--- <<<


extractAges :: [(Int, Person)] -> [Int]
extractAges [] = []
extractAges (p:ppl) = let (i, p') = p in
                      let pAge = age p' in 
                      if pAge > 0 then pAge : extractAges ppl
                                  else extractAges ppl



