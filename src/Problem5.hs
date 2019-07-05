module Problem5 where

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Data.List

prob5 :: Maybe Integer
prob5 = find evenUntil20 [20,40..]
    where
        evenUntil20 n = all (\m -> n `mod` m == 0) [1..20]
