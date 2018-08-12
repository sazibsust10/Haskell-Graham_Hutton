{-
5. Show how the single comprehension [(x , y) | x ← [1, 2, 3], y ← [4, 5, 6]]
with two generators can be re-expressed using two comprehensions with
single generators. Hint: make use of the library function concat and nest
one comprehension within the other.

-}

--Answer: 

--I must admit I was totally confused over this one.

[[(x,y)| y <- [4,5,6]] | x <- [1,2,3]]
>[[(1,4),(1,5),(1,6)],[(2,4),(2,5),(2,6)],[(3,4),(3,5),(3,6)]]

--The trouble is of course that this is a list within a list.  The hint mentions concat which concatenates a list of lists so lets try that.

concat [[(x,y)| y <- [4,5,6]] | x <- [1,2,3]]
>[(1,4),(1,5),(1,6),(2,4),(2,5),(2,6),(3,4),(3,5),(3,6)]

