module Problem6 where

-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

prob6 :: Integer
prob6 = sqrOfSum - sumOfSqr
    where
        sqrOfSum = (sum lst)^(2::Int)
        sumOfSqr = sum (map (^(2::Int)) lst)
        lst = [1..100]
