-- Maybe は Applicative Functor
--
-- instance Applicative Maybe where
--   pure = Just
--   Nothing <*> _ = Nothing
--   (Just f) <*> something = fmap f something
--   Just で包まれた関数 f を something に適用する、つまり、
--   fmap で f を something に適用する.

main = do
  print ">>> Maybe is Applicative"
  print $ Just (+3) <*> Just 9
  print $ pure (+3) <*> Just 10
  print $ pure (+3) <*> Just 9
  print $ Just (++"hahaha") <*> Nothing

  print ">>> Applicative Style"
  print $ pure (+) <*> Just 3 <*> Just 5
  print $ pure (+) <*> Nothing <*> Just 5

  print ">>> List is Applicative"
  -- List は Applicative であり、非決定性計算を見事に実行する.
  print $ (++) <$> ["ha", "heh", "hmm"] <*> ["?", "!", "."]
  print $ (*) <$> [3..10] <*> [10,20,30]
