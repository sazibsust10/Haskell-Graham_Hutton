{-
4. A positive integer is perfect if it equals the sum of its factors, excluding
the number itself. Using a list comprehension and the function factors,
define a function perfects :: Int → [Int ] that returns the list of all perfect
numbers up to a given limit. For example:
> perfects 500
[6, 28, 496]

-}

--1 2 3 6
--1 2 4 7 14 28 

myFactors :: Int -> [Int]
myFactors n = [x | x <- [1..(n-1)], n `mod` x == 0]


perfects :: Int -> [Int]
perfects n = [ x | x <- [1..n], sum (myFactors x) == x]  
