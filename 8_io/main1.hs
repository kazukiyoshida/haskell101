-- I/O

-- I/Oアクションを do 構文を使ってまとめると、糊付けされた1つのI/Oアクションにできる.
-- 今回は、こうして得られるアクションの型は IO () である.
-- main の型宣言は明示しないことが多い
main = do
  -- putStrLn は文字列を引数に取り、「空のタプルを結果とする I/O アクションを返す」
  -- putStrLn :: String -> IO ()
  -- putStrLn "xxx" が評価されると、文字列を表示するのではなく、「"xxx"と表示しろ」
  -- という命令書（I/Oアクション）を返す.
  putStrLn "Hello, what's your name?"

  -- getLine は String を生成する IO アクション.
  -- getLine :: IO String
  -- name <- getLine で、「IOアクションgetLineの結果得られた値を name に束縛せよ」
  -- という意味になる. IO アクションの中身を変数に格納することを束縛と呼ぶらしい.
  name <- getLine

  -- putStrLn は束縛を行なっていない.
  -- do ブロックの最後の行では束縛ができない（理由は別途）.
  putStrLn ("Hey " ++ name ++ ", you rock!")
