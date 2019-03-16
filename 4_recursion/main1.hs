maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list!"
maximum' [x] = x
maximum' ( x:xs ) = max x (maximum' xs)

replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' (n-1) x

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = ( reverse' xs ) ++ [x]

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (a:ax) (b:bx) = (a,b) : zip' ax bx

main = do
  print $ maximum' [3,4,5,10,3,7,1]
  print $ replicate' 5 "a"
  print $ reverse' [1..10]
  print $ zip' [1,2,3] [5,6]
