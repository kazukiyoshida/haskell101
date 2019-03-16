-- lambda 式
-- 宣言：(\引数 -> 引数をいろいろ操作した後の値)
-- lambda式は式なので関数に直接渡すことができる

main = do
  print $ map (+3) [1,5,2,3]
  print $ map (\x -> x+3) [1,5,2,3]
