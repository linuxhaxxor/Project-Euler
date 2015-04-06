main :: IO ()
main = print $ largest3DigitPalindromeProduct

largest3DigitPalindromeProduct :: Int
largest3DigitPalindromeProduct =
  head . filter isIntPalindrome . map product' $ testPairs

isIntPalindrome :: Int -> Bool
isIntPalindrome int =
  let str = show int
  in str == reverse str

product' :: (Int, Int) -> Int
product' (x, y) = x * y

-- Could be more efficient as a list comprehension
-- init will drop the last value as it is (100, 99)
testPairs :: [(Int, Int)]
testPairs = init . foldl testPairs' [] $ [100..999]

testPairs' :: [(Int, Int)] -> Int -> [(Int, Int)]
testPairs' xs y = [(y, y), (y, y-1)] ++ xs
