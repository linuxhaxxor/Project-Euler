# memoizedFid :: Int -> Int
memoizedFib = ((memo={}) ->
	(x) ->
		if memo[x] then memo[x]
		else memo[x] =
			if x == 0 then 0
			else if x == 1 then 1
			else memoizedFib(x-2) + memoizedFib(x-1)
)()

# add :: Int -> Int -> Int
add = (x, y) -> x + y

# sum :: [Int] -> int
sum = (xs) -> xs.reduce add, 0

# fibsTo :: Int -> [Int] -> [Int]
fibsTo = (x, xs=[1]) ->
	if xs[xs.length - 1] > x then xs
	else
		xs[xs.length] = memoizedFib xs.length
		fibsTo x, xs


# sumEvenFibsTo :: Int -> Int
sumEvenFibsTo = (x) ->
	sum fibsTo(x).filter((x) -> x % 2 == 0)


console.log sumEvenFibsTo(4000000)

