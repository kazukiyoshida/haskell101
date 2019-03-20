-- 型引数、型コンストラクタ
-- 型コンストラクタはなんらかの具体型を渡すと、新しい具体型を返してくれる.
-- 具体型とは、型引数を1つも取らない型か、あるいは型引数をとるがそれらが全て埋まって
-- いるような型.

-- 左辺の Vector は 型コンストラクタ.
-- 左辺の Vector a は（具体型にはなっていない）データ型.
-- 右辺の Vector は値コンストラクタ.
--
-- 注意点として、データ型の宣言に型クラス制約が一切ついていない.
-- （ベクトルとしては Int, Integer, Double などを想定していて、これらはNum型クラスの
--   インスタンスなので、そう言ってあげたほうがわかりやすいとも思えるのに！）
-- これは、具体的な Function を記述する際に型クラス制約が明言されるからいらない！
data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) =  i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (m*i) (m*j) (m*k)

main = do
  print $ Vector 3 5 8
  print $ Vector 3 5 8 `vplus` Vector 3 5 8
  print $ Vector 3 5 8 `dotProd` Vector (-5) (-3) 4
