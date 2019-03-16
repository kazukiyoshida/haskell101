-- where節 の中で パターンマッチ
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname

-- where節 の中で定義できるのは定数だけじゃない、関数もだ
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

main = do
  print $ initials "yoshida" "kazuki"
  print $ calcBmis [(60, 1.72), (72, 1.82), (82, 1.82)]
