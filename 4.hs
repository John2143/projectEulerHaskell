main = print $ maximum nums

isPalindrome n = reverse (show n) == show n
nums = filter isPalindrome [x * y | x <- [900..999], y <- [900..999]]
