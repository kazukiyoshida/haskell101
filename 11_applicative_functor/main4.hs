-- Functor Principle を破る

-- Counter Maybe
-- CJust の 1つ目の引数がカウンタで、2つ目の引数は任意のデータ型.
data CMaybe a = CNothing | CJust Int a
  deriving (Show)

-- fmap を使うたびにカウンタをインクリメントするような仕様とする.
-- この仕様により、Functor インスタンスなのに Functor則が満たされないという
-- 病的な状態になる.
instance Functor CMaybe where
  fmap f CNothing = CNothing
  fmap f (CJust counter x) = CJust (counter+1) (f x)

main = do
  -- Counter Maybe の確認
  print $ ( CNothing :: CMaybe Int )
  print $ ( CJust 0 "Haha" )
  print $ ( CJust 100 [1,2,3] )

  -- fmap の動作確認
  print $ fmap (++"Ha!!") (CJust 0 "Whoo!!")
  print $ fmap (++"Yeah!!") ( fmap (++"Ha!!") (CJust 0 "Whoo!!") )
  print $ fmap (++"blah?") CNothing

  -- Functor Principle 第一法則が破れていることの確認
  print $ fmap id (CJust 0 "haha")
  print $ id (CJust 0 "haha")
