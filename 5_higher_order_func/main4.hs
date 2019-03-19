-- $ を使った関数適用
-- 定義
-- ($) :: (a -> b) -> a -> b
-- f $ x = f x
main = do
  -- 括弧() を取り除く
  print $ sum (filter (>10) (map (*2) [2..10]))
  print $ sum $ filter (>10) $ map (*2) [2..10]

  -- 関数適用自身を関数として扱う
  -- 関数($ 3) は、関数を引数にとって、その関数を3に適用する関数
  print $ map ($ 3) [(4+), (10*), (^2), sqrt]