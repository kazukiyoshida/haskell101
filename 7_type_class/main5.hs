-- インスタンスに deriving を追加することで自動導出
data Person = Person {
  firstName :: String,
  lastName :: String,
  age :: Int
} deriving (Eq)
