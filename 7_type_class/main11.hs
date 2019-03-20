-- Functor

-- Functor 型クラスの定義
-- ここで f は具体型ではなく、1つの型引数を取る型コンストラクタ.
-- したがって f には Maybe や [] などが対応する.
class Functor f where
  fmap :: (a -> b) -> f a -> f b

main = do
  print $ map (*2) [1..3]
