module Problem4 where

-- Find the largest palindrome made from the product of two 3-digit numbers.

prob4 :: Integer
prob4 = maximum (filter isPalindrome stream)
    where
        stream = down >>= (\m -> (map (\n -> n * m) down))
        down = reverse [1..999]

isPalindrome :: Integer -> Bool
isPalindrome n = nStr == reverse nStr
    where
        nStr = show n
