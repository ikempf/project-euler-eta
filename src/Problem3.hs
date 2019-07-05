module Problem3 where

import Data.List

-- What is the largest prime factor of the number 600851475143 ?

-- Seems to also works without checking prime

prob3 :: Integer
prob3 = maximum (primeFactors 12)

primeFactors :: Integer -> [Integer]
primeFactors n =
    if (isPrime n) then [n]
    else foldMap continue (smallestPrimeDiv n)
        where
            continue divisor = divisor : (primeFactors (n `div` divisor))

smallestPrimeDiv :: Integer -> Maybe Integer
smallestPrimeDiv n = find (exactDivision n) primes

primes :: [Integer]
primes = filter isPrime [2..]

isPrime :: Integer -> Bool
isPrime n = null (filter (exactDivision n) [2..n-1])

exactDivision :: Integer -> Integer -> Bool
exactDivision n m = (n `mod` m) == 0
