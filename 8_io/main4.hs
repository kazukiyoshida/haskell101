-- when 関数
-- 制御構文のように見えるが、ただの関数.
-- when は条件が満たされたときのみ、何らかのI/Oアクションを行いたい場合に便利

import Control.Monad

main = do
  input <- getLine
  when (input == "SWORDFISH") $ do
    putStrLn input

-- 下と同値.
-- main = do
--   input <- getLine
--   if (input == "SWORDFISH")
--     then putStrLn input
--     else return ()
