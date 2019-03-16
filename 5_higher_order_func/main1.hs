-- カリー化された関数..
-- Haskellのすべての関数は、公式には1つの引数だけを取ることになっている.
-- 下のmultThree関数など、関数はカリー化されており、カリー化とは1つの
-- 引数を受けるようになっている.
multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

-- 部分適用
multTwoWithNine = multThree 9

-- セクション
-- 中置関数はセクションと言う機能を使って部分適用を行うことができる.
-- セクションは( 演算子 + 引数 ) あるいは ( 引数 + 演算子 ) で表現される.
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

main = do
  print $ multTwoWithNine 2 4

  print $ divideByTen 200
  print $ (/30) 600
