'use strict'

// intRangeTo :: Int -> [Int]
let intRangeTo = (x) => {
	let arr = []
	for (let i=1; i<=x; ++i)
		arr.push(i)
	return arr
}

// isDivisBy3or5 :: Int -> Bool
let isDivisBy3or5 = (x) => x % 3 === 0 || x % 5 === 0

// sumIntsDivisBy3or5To :: Int -> Int
let sumIntsDivisBy3or5To = (x) => intRangeTo(x).filter(isDivisBy3or5)
                                               .reduce((x, y) => x + y, 0)

console.log(sumIntsDivisBy3or5To(999))

