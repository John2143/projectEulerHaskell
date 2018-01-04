--Check if a number is divisible by all numbers from 1 to n
evenlyDivisibleUpto :: (Integral a) => a -> a -> Bool
evenlyDivisibleUpto 1 _ = True
evenlyDivisibleUpto x n = n `mod` x == 0 && evenlyDivisibleUpto (x-1) n

isPrime n = null [x | x <- [2..n - 1], n `mod` x  == 0]

upto = 20
--Find the prime factors of the numbers and multiply them together, as a number
--divisible by `upto` must be a multiple of this
delta = product (filter isPrime [1..upto])

--Not sure why this doesnt work
{-getSmallestDivisible :: (Integral a) => [a] -> a-}
getSmallestDivisible :: [Int] -> Int
getSmallestDivisible = head . (filter $ evenlyDivisibleUpto upto)

main = print $ getSmallestDivisible [delta, 2*delta..]
