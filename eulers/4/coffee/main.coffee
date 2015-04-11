# toString : Number -> String
toString = (x) -> Number::toString.call x

# reverse : [a] -> [a]
reverse = (xs) -> Array::reverse.call xs

# concat : [a] -> [a]
concat = (xs, ys) -> Array::concat.call xs, ys

# foldl1 : (a -> b -> a) -> b -> a -> b
foldl1 = (fn, xs) -> Array::reduce.call xs, [], fn

# isIntPalindrome : Int -> Bool
isIntPalindrome = (x) ->
	str = toString x
	str is reverse str

# threeDigitPairs : [[Int]]
threeDigitPairs = foldl1 ((x, ys) -> console.log(x, ys); concat ys, [x, x]) [100..999]

console.log threeDigitPairs
