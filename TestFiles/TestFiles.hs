
--factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

--isPrime :: Int -> Bool
isPrime n = factors n == [1,n]


--generatePrime :: Int -> [Int]
generatePrime n = [x| x <- [1..n], isPrime x]
 
 
mySort :: [Int] -> [Int]
mySort [] = []
mySort (x:xs) = mySort largeValues ++ [x] ++ mySort smallValues
                where 
                 smallValues = [a | a <- xs , a < x]
                 largeValues = [b | b <- xs, b > x]
				 
