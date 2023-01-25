-- Quesion 3.1

-- a

orderPair :: Ord a => (a,a) -> (a,a)
orderPair (x, y) = if x < y then (x, y) else (y, x)

-- b

addToSet :: Eq a => a -> [a] -> [a]
addToSet x xs = if x `elem` xs then xs else xs ++ [x]

-- Question 3.2 

-- a 

majority :: Bool -> Bool -> Bool -> Bool 
majority True True _ = True
majority _ True True = True 
majority True _ True = True
majority _ _ _ = False

-- b 

removeFstZero :: String -> String 
removeFstZero ('0': xs) = xs
removeFstZero xs = xs

-- Question 3.3

-- a 

pow :: Double -> Int -> Double 
pow x 1 = x  
pow x y = x * pow x (y - 1)

-- b

deleteAll :: Eq a => a -> [a] -> [a]
deleteAll _ [] = []
deleteAll n (x:xs) = if x == n then deleteAll n xs else x : deleteAll n xs

-- c

sumPrefixesPlusConst :: Int -> [Int] -> [Int]
sumPrefixesPlusConst n [] = []
sumPrefixesPlusConst n (x:xs) = n + x : sumPrefixesPlusConst (x+n) xs

sumPrefixes :: [Int] -> [Int]
sumPrefixes x = sumPrefixesPlusConst 0 x



   