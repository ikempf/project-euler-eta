module Problem2 where

-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

import Data.Function

prob2 :: Integer
prob2 = sum evenFib
    where
        evenFib   = filter even cappedFib
        cappedFib = takeWhile (<= 4000000) fibs
        fibs      = map fib [0..]

fib :: Integer -> Integer
fib 0 = 1
fib 1 = 2
fib n = (fib (n - 1)) + (fib (n - 2))

prob2' :: Integer
prob2' = sum $ filter even $ takeWhile (<= 4000000) $ map fib $ [0..]

prob2'' :: Integer
prob2'' = sum . filter even . takeWhile (<= 4000000) . map fib $ [0..]

prob2''' :: Integer
prob2''' = [0..] & map fib & takeWhile (<= 4000000) & filter even & sum
