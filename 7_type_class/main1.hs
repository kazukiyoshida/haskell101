
-- 新しいデータ型を作る
-- data キーワードを使う. 右辺には「または | 」を使って既存のデータ型や、
-- あるいは***値コンストラクタを使ったデータ型の定義***を記述する.
--
-- 既存のデータ型だけを使って新しいデータ型を定義する例
-- data Bool = True | False
-- data Int =  ... -3 | -2 | -1 | 0 | 1 | 2 | 3 ... （このコードは動かない）
--
-- 値コンストラクタは、「最終的に値を返す関数」である.

-- Shape というデータ型は2種類の値コンストラクタを持つ.
-- Shape データ型は、Boolean や Int といったデータ型と並列になるものであるが、
-- 既存のデータ型は値コンストラクタがなく、値が**ベタがき**されていた.
-- また、Shapeデータ型を文字列にできるように Show型クラスの一員になるようにしている.
data Shape = Circle Float Float Float |
             Rectangle Float Float Float Float
  deriving (Show)

-- 値コンストラクタを使ったパターンマッチも可能.
area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

main = do
  print $ area $ Circle 10 20 10
  print $ area $ Rectangle 0 0 10 10
