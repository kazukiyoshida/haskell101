-- 型クラスの自作
-- YesNo 型クラスは yesno という一つだけの関数で特徴付ける.
-- 今回は完全最小定義は必要ない

class YesNo a where
  yesno :: a -> Bool

-- 型を型クラスのインスタンスとして"""Implement"""する
-- YesNo Int 型 を YesNo型のインスタンスにするためには、yesno関数を実装しないといけない
instance YesNo Int where
  yesno 0 = False
  yesno _ = True

instance YesNo [a] where
  yesno [] = False
  yesno _ = True

instance YesNo Bool where
  yesno = id

instance YesNo (Maybe a) where
  yesno (Just _) = True
  yesno Nothing = False

yesnoIf ::  (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
  if yesno yesnoVal
    then yesResult
    else noResult

main = do
  print $ yesno "haha"
  print $ yesno ""
  print $ yesno ( 0 :: Int )
  print $ yesno ( 100 :: Int )
  print $ yesnoIf "" "YEAH!" "NOOOO!"
  print $ yesnoIf ( 3 :: Int ) "YEAH!" "NOOOO!"
