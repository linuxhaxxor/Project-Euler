# add :: Number -> Number -> Number
add = (x, y) -> x + y

# sum :: [Number] -> Number
sum = (xs) -> xs.reduce(add, 0)

# isDivisBy :: Int -> Int -> Bool
isDivisBy = (x, y) -> x % y == 0

# isDivisBy3or5 :: Int -> Bool
isDivisBy3or5 = (x) -> (isDivisBy(x, 3) or isDivisBy(x, 5))

console.log sum([0..999].filter(isDivisBy3or5))

