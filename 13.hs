maxNum = 100000
main = print $ maximum (map chainLength [1..maxNum])

collatz :: Int -> Int
collatz n
    | even n = quot n 2
    | otherwise = 3 * n + 1

chainLength :: Int -> Int
chainLength 1 = 0
chainLength i = 1 + (chainLength (collatz i))
