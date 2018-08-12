
factors n = [x | x <- [1..n], n `mod` x == 0]
isPrime n = factors n == [1,n]
primes n = [x | x <- [1..n], isPrime x]

