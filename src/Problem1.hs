module Problem1 where

-- Find the sum of all the multiples of 3 or 5 below 1000.

prob1 :: Integer
prob1 = sum (filter isMultiple [1..999])
    where
        isMultiple n
          | n `mod` 3 == 0 = True
          | n `mod` 5 == 0 = True
          | otherwise      = False

