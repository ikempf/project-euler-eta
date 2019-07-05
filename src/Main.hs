module Main where

import System.TimeIt

import Problem1
import Problem2
import Problem3
import Problem4
import Problem5

main :: IO ()
main =
    putStrLn "------------------" >>
    timeIt(putStrLn ("Problem 1 : " ++ show (prob1))) >>
    timeIt(putStrLn ("Problem 2 : " ++ show (prob2))) >>
    timeIt(putStrLn ("Problem 3 : " ++ show (prob3))) >>
    timeIt(putStrLn ("Problem 4 : " ++ show (prob4))) >>
    timeIt(putStrLn ("Problem 5 : " ++ show (prob5))) >>
    putStrLn "------------------"
