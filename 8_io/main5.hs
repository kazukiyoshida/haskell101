-- sequence 関数
-- I/O アクションのリストを受け取り、それらを順に実行するI/Oアクションを生成する.

main = do
  rs <- sequence [getLine, getLine, getLine]
  print rs

-- 下と同値
-- main = do
--   a <- getLine
--   b <- getLine
--   c <- getLine
--   print [a,b,c]
