-- クイックソート
-- 少し考えてみたけど、let, in を使わないと記述できないものの例になっている..
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let smallerOrEqual = [a | a <- xs, a <= x]
      larger         = [a | a <- xs, a > x]
  in  quickSort smallerOrEqual ++ [x] ++ quickSort larger

main = do
  print $ quickSort [2,8,1,10,3,8]
