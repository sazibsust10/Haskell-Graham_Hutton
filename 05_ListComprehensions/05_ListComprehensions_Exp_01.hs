{-
1. Using a list comprehension, give an expression that calculates the sum
	1^2 + 2^2 + . . . 100^2 of the first one hundred integer squares.
-}


calculateSquares :: Int -> Int
calculateSquares n = sum [x * x | x <- [1..n]]
