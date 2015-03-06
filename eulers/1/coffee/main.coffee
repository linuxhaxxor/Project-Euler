# add :: Number -> Number -> Number
add = (x, y) -> x + y

# sum :: [Number] -> Number
sum = (xs) -> xs.reduce(add, 0)

# isDivisBy :: Int -> Int -> Bool
isDivisBy = (x, y) -> x % y == 0

# isDivisBy3or5 :: Int -> Bool
isDivisBy3or5 = (x) -> (isDivisBy(x, 3) or isDivisBy(x, 5))

# sumIntsDivisBy3or5To :: Int -> Int
sumIntsDivisBy3or5To = (x) -> sum([1..x].filter(isDivisBy3or5))

console.log sumIntsDivisBy3or5To(999)

