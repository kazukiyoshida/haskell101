-- ガード
-- 関数の定義をする際、引数の**構造**で場合わけ（例えば、配列の長さが0なら、
-- 1なら、それ以上なら..など）をするならパターンを使っていた。
-- 今回は引数の**条件**で場合分けをする.
-- 引数に直接if文をくっつけるようなもの.
bmiTell :: Double -> Double -> String
bmiTell weight height
  | weight / height ^ 2 <= 18.5 = "You're underweigt."
  | weight / height ^ 2 <= 25.0 = "You're normal. I bet you're ugly!"
  | weight / height ^ 2 <= 30.0 = "You're fat!! Lose some weight!"
  | otherwise   = "You're whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b    = b
  | otherwise = a

main = do
  print $ bmiTell 72 1.82
  print $ max' 5 10
