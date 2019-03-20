-- レコード構文を使わないでWebシステムのユーザー型を作る
--                   name   age point email
data Person = Person String Int Float String
  deriving(Show)

name :: Person -> String
name (Person name _ _ _) = name

age :: Person -> Int
age (Person _ age _ _) = age

point :: Person -> Float
point (Person _ _ point _) = point

email :: Person -> String
email (Person _ _ _ email) = email

-- レコード構文を使ってユーザー型を定義する
data Person' = Person' {
  name' :: String,
  age' :: Int,
  point' :: Float,
  email' :: String
} deriving (Show)

main = do
  print $ age  ( Person "yoshida" 26 100.0 "yoshida@email.com")
  print $ age'  ( Person' "yoshida" 26 100.0 "yoshida@email.com")
