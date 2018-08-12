{-
2. In a similar way to the function length, show how the library function
replicate :: Int → a → [a ] that produces a list of identical elements can
be defined using a list comprehension. For example:
> replicate 3 True
[True, True, True ]
-}



--Solution 01: List Comprehension

myReplicateList :: Int -> a -> [a]
myReplicateList n a = [a | b <- [1..n]]


--Solution 02: Recursive Call

myReplicate :: Int -> a -> [a]
myReplicate 0 a = []
myReplicate n a = [a] ++ myReplicate (n-1) a