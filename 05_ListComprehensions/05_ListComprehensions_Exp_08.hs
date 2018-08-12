{-
8. Modify the Caesar cipher program to also handle upper-case letters.
-}


import Data.Char

isMyLower :: Char -> Bool
isMyLower c = (ord c) >= 97 && (ord c) <= 123 

lowers :: String -> Int
lowers xs = length [x | x <- xs, (isMyLower x)]

count :: Char->String->Int
count c xs = length [x | x <- xs, x == c]


let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr ( ord 'a' + n ) 

shift :: Int->Char->Char
shift n c | isMyLower c = int2let ( (let2int c + n) `mod` 26)
          | otherwise = c

encode :: Int->String->String
encode n xs = [shift n x | x <- xs]

percent :: Int -> Int -> Float 
percent n m = (fromIntegral n / fromIntegral m) * 100.00

freqs :: String -> [Float]
freqs xs = [ percent (count x xs) (lowers xs) | x <- ['a'..'z'] ]

chisqr :: [Float ] -> [Float ] -> Float
chisqr os es = sum [((o - e) ^ 2) / e | (o, e) <- zip os es ]

rotate :: Int -> [a ] -> [a ]
rotate n xs = drop n xs ++ take n xs







