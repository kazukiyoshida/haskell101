-- 配列のパターンマッチ1
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummn."
head' (x:_) = x

-- 配列のパターンマッチ2
-- 関数の定義に型クラス制約がついている.
-- つまり、tell 関数の引数は Show 型クラスのインスタンス出なければならないと言っている
-- tell :: << (Show a) => [a] >>   この << .. >> がtell関数の引数
tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element : " ++ show x
tell (x:y:[]) = "The list has two elements : " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is too long..."

-- 型クラス制約をつけないと「show できるかわかりませんよ〜」とコンパイラが言ってくる..！
-- tell' :: [a] -> String
-- tell' [] = "The list is empty"
-- tell' (x:[]) = "The list has one element : " ++ show x

-- as パターン
-- all@(x:xs) で、左側がパターンマッチのもとになったモノ. 右側がパターンマッチ後のモノ.
firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

main = do
  print $ head' [1,2,3]

  print $ tell [1]
  print $ tell [1, 2]
  print $ tell [1, 2, 3]

  let xs = [(1,3), (4,3), (2,4), (5,3)]
  print $ [a+b | (a,b) <- xs]


