double x = x + x
quad x = double (double x)
factorial x = product [1..x]
average xs = sum xs `div` length xs


myAdd a b = a + b

myAnd a b = if a == False then False
		else if b == False then False
		else True

		
myMult = \x -> (\y -> (\z -> x * y * z))