main :: IO ()
main = print . sumEvenFibsTo $ 4000000

-- Memoization @ https://wiki.haskell.org/Memoization
memoizedFib :: Int -> Int
memoizedFib = (map fib [0..] !!)
  where fib :: Int -> Int
        fib 0 = 0
        fib 1 = 1
        fib x = memoizedFib (x-1) + memoizedFib (x-2)

sumEvenFibsTo :: Int -> Int
sumEvenFibsTo x = sum . filter even . takeWhile (<x) $ map memoizedFib [0..]
