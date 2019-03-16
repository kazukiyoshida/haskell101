import Data.Typeable

main = do
  -- 型情報を出力するには typeOf を用いる.
  -- ただし、具体型でないと取れない
  print $ typeOf 'a'
  print $ typeOf "aaa"
  print $ typeOf True
  print $ typeOf (True, 'a')
  print $ typeOf $ 4 == 5
  print $ typeOf addThree
  --print $ typeOf 1
  --これはエラーになる. 数字は Num型クラスのインスタンスであり多相型.
  --型注釈をつけると具体型となる.
  print $ typeOf (1 :: Int)

  -- read は print の逆
  print $ (read "5" :: Int) * 4

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
