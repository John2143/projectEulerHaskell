main = print $ sum $ evenFibsLessThan 4000000

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

evenFibsLessThan :: Integer -> [Integer]
evenFibsLessThan x = takeWhile (<x) (filter even fibs)
