import Data.List
-- import Data.List でエクスポートされた関数や型が使えるようになる.

-- length . nub はポイントフリースタイルになっている.
-- つまり、関数定義のときに一時的に登場する変数x がない
numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

numUniques' :: (Eq a) => [a] -> Int
numUniques' = \xs -> length ( nub xs )

main = do
  print $ numUniques [1,4,7,1,2,4,3,9]
  print $ numUniques' [1,4,7,1,2,4,3,9]
