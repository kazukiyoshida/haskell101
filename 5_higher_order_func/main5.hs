main = do
  -- 関数合成
  print $ map (\x -> negate (abs x)) [5, -3, -5, -7, 2, -19]
  print $ map (negate . abs) [5, -3, -5, -7, 2, -19]

  print $ map (\xs -> negate ( sum (tail xs) )) [[1..5], [3..6], [1..7]]
  print $ map ( negate .sum . tail) [[1..5], [3..6], [1..7]]

  -- 多引数の関数合成
  print $ sum (replicate 5 ( max 6.7 8.9 ))
  print $ sum $ replicate 5 $ max 6.7 8.9
  print $ sum . replicate 5 $ max 6.7 8.9
