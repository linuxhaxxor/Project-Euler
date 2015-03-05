main :: IO ()
main = putStrLn . show . sumIntsDivisBy3or5 $ [0..999]

divisBy :: Int -> Int -> Bool
divisBy x y = mod x y == 0

divisBy3or5 :: Int -> Bool
divisBy3or5 x = (divisBy x 3) || (divisBy x 5)

sumIntsDivisBy3or5 :: [Int] -> Int
sumIntsDivisBy3or5 xs = sum $ filter divisBy3or5 xs

