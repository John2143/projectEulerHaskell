--This takes a while...
triList :: [Int]
triList = scanl1 (+) [1..]

divisors :: Int -> [Int]
divisors n = 1 : filter ((==0) . rem n) [2 .. quot n 10000]
numDivisors :: Int -> Int
numDivisors = length . divisors
hasEnough :: Int -> Bool
hasEnough f = (numDivisors f) > 500

main = print $ fst $ head $ filter (snd) $ (map (\x -> (x, hasEnough x)) triList)
