-- 逆ポーランド記法電卓
--
-- " 10 4 3 + 2 * -" を計算する..

-- プロトタイプ..
--
-- rpn :: String -> Double
-- rpn expression = head ( foldl foldingFunction [] ( words expression ) )
--   where foldingFunction stack item = ...

rpn :: String -> Double
rpn = head . foldl foldingFunction [] . words
  where foldingFunction (x:y:zs) "+" = (y+x):zs
        foldingFunction (x:y:zs) "-" = (y-x):zs
        foldingFunction (x:y:zs) "*" = (y*x):zs
        foldingFunction xs numberString = read numberString:xs

main = do
  line <- getLine
  print $ rpn line
  main
