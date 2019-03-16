-- case式
-- case式は以下のように定義されている.
-- case expression of pattern -> result
--                    pattern -> result

-- case式は関数の引数に対するパターンマッチと非常に似ているが、
-- 実は「関数の引数に対するパターンマッチ」の裏ではcase式が動いている、
-- つまりcase式の糖衣構文である.
head' :: [a] -> a
head' [] = error "No head for empty lists!"
head' (x:_) = x

head'' :: [a] -> a
head'' xs = case xs of [] -> error "No head for empty lists"
                       (x:_) -> x

-- case式はどこでも使える.
describeList :: [a] -> String
describeList ls = "The list is "
                  ++ case ls of [] -> "empty."
                                [x] -> "a singleton list."
                                xs -> "a longer list."

main = do
  print $ head'' "hello!"
