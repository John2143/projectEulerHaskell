upto = 100
numslist = [1..upto]

squaredSum = (sum numslist) ^ 2
sumSquared = sum [x * x | x <- numslist]

main = print (squaredSum - sumSquared)
