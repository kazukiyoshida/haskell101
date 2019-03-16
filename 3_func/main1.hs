-- パターンマッチ0
-- 関数でパターンマッチを使い、上から順番に合致しているか確認していく.
-- パターンマッチ用の任意変数（したの場合は x ）を用いることがパターンマッチの本質.
-- 「上から順番に..」だけではなく、配列やタプルなど色々な用途がある.
lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!!"
lucky x = "sorry, youre out of luck, pal."

main = do
  print $ lucky 5
  print $ lucky 6
  print $ lucky 7
