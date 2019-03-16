main = do
  print ">>>>> Introduction >>>>>"
  main1

  print ">>>>> List >>>>"
  main2

  print ">>>>> Tuple >>>>"
  main3


main1 = do
  -- 定数
  let x = 5/2
  print x

  -- not Equal 演算子 /=
  print (5 /= 4)

  -- 関数呼び出し
  -- a * b  .. 中置 ( ちゅうち ) 関数
  print ( div 92 10 )
  print ( 92 `div` 10 )
  print ( doubleMe 9 )
  putStrLn ( howOldAreYou "yoshida" 26 )
  print ( doubleSmallNumber 9 )
  print ( doubleSmallNumber 900 )


-- Pure Function の定義 1.
doubleMe x = x + x

-- Pure Function の定義 2.
howOldAreYou name age = nameSan ++ ageSai
  where
    nameSan = name ++ "さん"
    ageSai = show age ++ "歳"

-- Pure Function の定義 3.
-- if には else が必須
-- 命令型言語はプログラムが実行するステップの列なので関数が何も返さないことがある.
-- Haskell（関数型言語）は関数の集まりなので必ず何かを返す.
doubleSmallNumber x = if x > 100
                      then x
                      else x * 2

main2 = do
  -- リスト
  -- [1,2,3] は 1:2:3:[] の糖衣構文
  -- head, tail .. 先頭1つ, のこり全部
  -- init, last .. のこり全部, 最後1つ
  print ( [1,2,3,4] ++ [9,10,11] )
  print ( 'A' : " SMALL CAT" ) -- 先頭へ追加. cons演算子ともいう
  print ( [1,2,3] !! 2 )       -- 要素アクセス
  print ( null [] )            -- 空判定
  print ( take 5 [1,2] )       -- n 個まで取得
  print ( 5 `elem` [4,5,6] )   -- element 存在判定
  print ( [1..20] )
  print ( take 10 ( cycle [1,2,3] ) ) -- cycle で無限配列を生成

  -- リスト内包表記
  -- x <- [1..20] は、[1..20]という配列の各要素を x という変数にバインドするという意味.
  print ( [x*2 | x <- [1..20]] )
  print ( [ x | x <- [50..100], x `mod` 7 == 3 ] ) -- 条件（術語）をつけられる

main3 = do
  -- タプル
  print ( (3, 'a', "hello") )

  -- ペア（特殊なタプル）
  print ( fst (3, 'a') )
  print ( snd (3, 'a') )
