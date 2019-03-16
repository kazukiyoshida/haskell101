-- 関数を引数として受け取り、活用する実演
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

zipMain = do
  print $ zipWith' (+) [4,2,4,6] [2,6,8,1]
  print $ zipWith' (*) [4,2,4,6] [2,6,8,1]
  print $ zipWith' max [4,2,4,6] [2,6,8,1]
  print $ zipWith' (++) ["X: ", "Y: ", "Z: "] ["foge", "fuga", "bar"]

-- filter関数
filterMain = do
  print $ filter (>3) [1,5,6,2,3,4]

main = do
  print ">>> zip >>>"
  zipMain
  print ">>> filter >>>"
  filterMain
