-- Functor Principle

-- 第一法則：fmap id = id
-- 第二法則：fmap (f . g) = fmap f . fmap g
main = do
  print $ fmap id (Just 3)
  print $ id (Just 3)

  print $ fmap id [1..5]
  print $ id [1..5]
