#!/usr/bin/env coffee

# last : [a] -> Maybe a
last = (xs) ->
	length = xs.length
	if length > 0 then xs[length - 1] else null

# filter : (a -> Bool) -> [a] -> [a]
filter = (fn, xs) ->
	Array::filter.call xs, fn

# factors : Int -> [Int]
factors = (x) ->
	Array::concat [1], filter(((y) -> x % y is 0), [2..(x / 2 | 0)]), [x]

# isPrime : Int -> Bool
isPrime = (x) ->
	if x < 2 or x % 2 is 0 then false
	else if x is 2 then true
	else tailIsPrime x, 3

# tailIsPrime : Int -> Int -> Bool
tailIsPrime = (x, r) ->
	if r * r > x then true
	else if x % r is 0 then false
	else tailIsPrime x, r + 2

# largestPrimeFactor : Int -> Int
largestPrimeFactor = (x) ->
	last filter isPrime, factors(x)

console.log largestPrimeFactor 600851475143 #13195
