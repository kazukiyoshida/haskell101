phoneBook = [
  ("betty", "555-2938"),
  ("bonnie", "555-2933"),
  ("patsy", "444-2938"),
  ("wendy", "111-2938"),
  ("penny", "000-2938")
  ]

-- A. 連想配列を取り扱う関数の例.
-- ただし、これはランタイムエラーが発生する可能性がある
findKey :: (Eq k) => k ->  [(k, v)] -> v
findKey key dict = snd . head . filter (\(k, v) -> key == k) $ dict

-- B. Aを知らないkeyで検索できるように修正した例.
findKey' :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey' k [] = Nothing
findKey' k ((k_, v_):kv)
  | k == k_   = Just v_
  | otherwise = findKey' k kv

-- C. Bを畳み込みを用いて書き直した例
findKey'' :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey'' key xs = foldr
                     (\(k,v) acc -> if key == k then Just v else acc)
                     Nothing xs

main = do
  print $ phoneBook
  print $ findKey "betty" phoneBook
  print $ findKey "penny" phoneBook
  print $ findKey' "penny" phoneBook
  print $ findKey'' "pennywise" phoneBook
