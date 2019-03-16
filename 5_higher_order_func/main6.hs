-- ポイントフリースタイル
-- 関数の定義の際に、関数合成による宣言の場合は引数を省略できる.
sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

fn = ceiling . negate . tan . cos . max 50

main = do
  print $ sum' [1,2,3]
  print $ sum'' [1,2,3]
  print $ fn 3
