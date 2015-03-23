#!/usr/bin/env coffee

# handle JS's lack of TCO
trampoline = (fn) ->
	while fn and fn instanceof Function
		fn = fn.apply fn.context, fn.args
	fn


# last : [a] -> Maybe a
last = (xs) ->
	length = xs.length
	if length > 0 then xs[length - 1] else null


# filter : (a -> Bool) -> [a] -> [a]
filter = (fn, xs) ->
	Array::filter.call xs, fn


# isDivisBy : Int -> Int -> Bool
isDivisBy = (x, y) ->
	x % y is 0


# factors : Int -> [Int]
factors = (x) ->
	factorFilter = (y) -> isDivisBy x, y
	midFactors = (f for f in [2..(Math.floor x * 0.5)] when factorFilter f)
	Array::concat [1], midFactors, [x]


# isPrime : Int -> Bool
isPrime = (x) ->
	# tailIsPrime : Int -> Int -> Bool
	tailIsPrime = (x, r) ->
		if r * r > x then true
		else if isDivisBy x, r then false
		else tailIsPrime.bind null, x, r + 2
	if x < 2 or isDivisBy x, 2 then false
	else if x is 2 then true
	else trampoline (tailIsPrime.bind null, x, 3)


# Works for medium-size numbers
# largestPrimeFactor : Int -> Int
largestPrimeFactor = (x) ->
	last filter isPrime, factors(x)


console.log largestPrimeFactor 13195

