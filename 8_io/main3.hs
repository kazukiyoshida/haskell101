main = do
  line <- getLine
  if null line
    -- Haskell の return は純粋な値からI/Oアクションを作成する関数.
    -- （他の言語の return () とは全く異なる）
    then return ()
    else do
      putStrLn $ reverseWords line
      -- main が再帰的に呼び出されることで、つまりプログラムの先頭に戻る.
      main

-- words 関数は例えば "hey there man" から ["hey", "there", "man"] を生成する.
reverseWords :: String -> String
reverseWords = unwords . map reverse . words
