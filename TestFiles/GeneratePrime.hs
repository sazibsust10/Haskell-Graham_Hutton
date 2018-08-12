factors n = [x|x <- [1..n], n `mod` x == 0]
isPrime n = factors n == [1, n]
primes n = [x | x <- [2..n]  , isPrime x]

mySort :: [Int] -> [Int]
mySort [] = []
mySort (x:xs) = (mySort smaller) ++ [x] ++ (mySort myLarger)
				where 
					smaller = [a| a <- xs, a <= x]
					myLarger = [b| b <- xs, b > x]
					
myPerm :: [Int] -> [[Int]]
myPerm [] = [[]]
myPerm (x:xs) = [ [(myPerm leftList) ++ [x]] ]