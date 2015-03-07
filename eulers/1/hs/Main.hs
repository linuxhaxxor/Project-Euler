main :: IO ()
main = putStrLn . show . sumIntsDivisBy3or5To $ 999

isDivisBy :: Int -> Int -> Bool
isDivisBy x y = mod x y == 0

isDivisBy3or5 :: Int -> Bool
isDivisBy3or5 x = (isDivisBy x 3) || (isDivisBy x 5)

sumIntsDivisBy3or5To :: Int -> Int
sumIntsDivisBy3or5To x = sum $ filter isDivisBy3or5 [0..x]

