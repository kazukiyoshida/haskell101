import Data.Char

-- do 構文中の let 構文
-- let は I/O アクションの中で普通の値に名前をつけたいときに使う.
main = do
  putStrLn "What's your first name?"
  firstName <- getLine

  putStrLn "What's your last name?"
  lastName <- getLine

  let bigFirstName = map toUpper firstName
      bigLastName = map toUpper lastName

  putStrLn $ "hey " ++ bigFirstName ++ " "
                    ++ bigLastName ++ ", how are you?"
