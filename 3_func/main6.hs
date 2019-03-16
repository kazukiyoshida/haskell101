-- let式
-- let式は ( let binding in expression ) という形式を取る
-- そして重要なことは、これがその名の通り式であるということ.
-- 式ということは値を持つということなので、コード中のあらゆる場所に差し挟める

-- let式を関数定義に挟む例
cylinder :: Double -> Double -> Double
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in sideArea + 2 * topArea

main = do
  print $ cylinder 3 10

  --     <<let square x = x * x in (square 5, square 3, square 2)>>
  --     ここまでが、(25, 9, 4) という 1つの値になっている.
  print $ [let square x = x * x in (square 5, square 3, square 2)]

  -- let式では ; 区切りが使用できる
  print $ (let a = 100; b = 200; c = 300 in a * b * c ,
           let foo = "Hey "; bar = "There!" in foo ++ bar)

  -- let式とパターンマッチは相性が最高
  print $ (let (a, b, c) = (1, 2, 3) in a + b + c) * 100
