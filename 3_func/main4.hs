-- where節
-- whereで計算の中間結果に名前をつけることができる
bmiTell :: Double -> Double -> String
bmiTell weight height
  | bmi <= skinny = "You're underweigt."
  | bmi <= normal = "You're normal. I bet you're ugly!"
  | bmi <= fat    = "You're fat!! Lose some weight!"
  | otherwise     = "You're whale, congratulations!"
  where bmi = weight / height ^ 2
        skinny = 18.5
        normal = 25.0
        fat    = 30.0

-- where節のスコープ
-- これは動かない.. niceGreeting, badGreeting はスコープ外になる.
-- greet :: String -> String
-- greet "Juan" = niceGreeting ++ " Juan !"
-- greet "Fernando" = niceGreeting ++ " Fernando !"
-- greet name = badGreeting ++ " " ++ name ++ "!!"
--   where niceGreeting = "Hello! So very nice to meet you,"
--         badGreeting = "Get the hell out of here, "

niceGreeting = "Hello! So very nice to meet you,"
badGreeting = "Get the hell out of here !! "

greet :: String -> String
greet "Juan" = niceGreeting ++ " Juan !"
greet "Fernando" = niceGreeting ++ " Fernando !"
greet name = badGreeting

main = do
  print $ bmiTell 72 1.82
  print $ greet "bob"
  print $ greet "Juan"
