main = putStrLn $ show $ sumMultiples [5, 3] [1..999]
{-main = putStrLn (show $ zip [1..10] (map (isMultiList [5, 3]) [1..10]))-}

--takes the numbers you want to check multiples for, and a range of numbers to
--check, and sums the mutiples in the range
sumMultiples :: (Num a, Eq a, Integral a) => [a] -> [a] -> a
sumMultiples nums = sum . filter (isMultiList nums)

--If num is a multiple of anything in the list, return true
isMultiList :: (Num a, Eq a, Integral a) => [a] -> a -> Bool
isMultiList [] _ = False
isMultiList (x:xs) num = isMultiple num x || isMultiList xs num

--If a is a multiple of b, return true
isMultiple :: (Num a, Eq a, Integral a) => a -> a -> Bool
isMultiple a b = mod a b == 0
