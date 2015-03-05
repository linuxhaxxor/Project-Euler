# natNumBelow1000 :: [Int]
natNumsBelow1000 = [0..999]

# sum :: Number -> Number -> Number
sum = (x, y) -> x + y

# mod :: Int -> Int -> Int
mod = (x, y) -> x % y

# isDivisBy :: Int -> Int -> Bool
isDivisBy = (x, y) -> mod(x, y) == 0

# isDivisBy3or5 :: Int -> Bool
isDivisBy3or5 = (x) -> (isDivisBy(x, 3) or isDivisBy(x, 5))

console.log natNumsBelow1000.filter(isDivisBy3or5).reduce(sum, 0)

