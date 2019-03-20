import qualified Data.Map as Map
-- 名前空間を汚さないように qualified をつけているらしいが..？

-- Locker が埋まっているかどうかを表すデータ型を定義
data LockerState = Taken | Free deriving (Show, Eq)

-- Locker の暗証番号を表す型シノニムを宣言
type Code = String

-- ロッカーの状態と暗証番号の組を定義
type LockerMap = Map.Map Int (LockerState, Code)

-- ロッカーのMapから暗証番号を検索する.
-- Mapを見渡してロッカー番号が存在しなければ失敗、
-- ロッカー番号が存在しても、誰かが使っている場合もエラーコード、
-- それ以外の場合、つまり空いたロッカーなのであれば暗証番号を返す.
--
-- Map.lookup の API として、「存在しないキーを受けたら Nothing を返す」
-- というものらしい
lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = case Map.lookup lockerNumber map of
  Nothing -> Left $ "Locker" ++ show lockerNumber ++ " doesn't exist!"
  Just (state, code) -> if state /= Taken
                          then Right code
                          else Left $ "Locker " ++ show lockerNumber ++ "is already taken!"


lockers :: LockerMap
lockers = Map.fromList[
  (100, (Taken, "ZD391")),
  (101, (Free, "JAH31")),
  (103, (Free, "ISL28")),
  (105, (Taken, "8971F")),
  (109, (Taken, "8KID4"))
  ]

main = do
  print $ lockers
  print $ lockerLookup 100 lockers
  print $ lockerLookup 101 lockers
  print $ lockerLookup 102 lockers
  print $ lockerLookup 103 lockers
