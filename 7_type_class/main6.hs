-- インスタンスの自動導出
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
  deriving (Eq, Ord, Show, Read, Bounded, Enum)

main = do
  print $ Wednesday
  print $ show Wednesday
  print $ Wednesday == Wednesday
  print $ Wednesday > Wednesday
  print $ Friday > Wednesday
  print $ succ Wednesday
  print $ pred Saturday
  print $ [Thursday .. Sunday]
  -- print $ read ( "Sunday" :: Day )
