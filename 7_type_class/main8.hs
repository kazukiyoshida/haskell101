-- 再帰的なデータ構造の例として、配列の再実装

-- 結合性（fixity）の宣言.
-- 結合性宣言を省略すると全て infixl 9 になる.
-- 数字が大きいほど結合性が強い. 足し算で 6, 掛け算で 7.
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)


main = do
  print $ 5 :-: Empty
  print $ 4 :-: 5 :-: Empty
  print $ 3 :-: 4 :-: 5 :-: Empty
