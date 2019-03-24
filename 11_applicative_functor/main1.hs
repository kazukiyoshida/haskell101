-- 帰ってきたファンクター
--
-- Functor は関数で写せるもののこと。例えば List, Maybe, Tree,.. などである.
-- Functor の型クラスメソッドは fmap.
-- fmap :: (a -> b) -> f a -> f b
--
-- Functor は文脈を持った値だとみなすこともできる.

-- main = do line <- getLine
--           let line' = reverse line
--           putStrLn $ "You said " ++ line' ++ " backewords!"
--           putStrLn $ "Yes, you said " ++ line' ++ " backewords!"

-- 下は上と同値.
-- Just "Hey" を fmap reverse して Just "yeH" を作るのと同様に、
-- getLine を fmap reverse できる.
-- Maybe という箱に入っている値に関数を適用できるのと同様に、
-- IO という箱に入っている値に関数を適用できる.
main = do
  line <- fmap reverse getLine
  putStrLn $ "You said " ++ line ++ " backewords!"
  putStrLn $ "Yes, you said " ++ line ++ " backewords!"
