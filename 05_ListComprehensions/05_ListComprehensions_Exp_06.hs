{-
6. Redefine the function positions using the function find.
-}

find :: Eq a => a -> [(a, b)] -> [b]
find k ps = [s | (f, s) <- ps, f == k]

positions :: Eq a => a -> [a] -> [Int]
positions k xs = find k (zip xs [0..(length xs - 1)])
