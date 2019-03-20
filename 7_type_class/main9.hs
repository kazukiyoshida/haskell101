-- 再帰的な代数データ構造の例
-- 二分探索木

-- 左の Tree は多相化された型コンストラクタ.
-- 右の Node は再帰的に記述された値コンストラクタ.
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving  (Show)

-- Tree を Functor 型クラスのインスタンスにする
instance Functor Tree where
  fmap f EmptyTree = EmptyTree
  fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

-- 子ノードを持たないノードを作る関数.
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

-- 1つ目の引数として Tree を、2つ目として新しい要素を受け取り、Treeに挿入する関数.
-- Haskell は Tree を直接更新できないので、新しい Tree を返却する.
treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x < a  = Node a (treeInsert x left) right
  | x > a  = Node a left (treeInsert x right)

-- ある要素が Tree のノードに存在しているかどうかを判定する関数.
treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
  | x == a = True
  | x < a  = treeElem x left
  | x > a  = treeElem x right

-- 15行のコードで多相的な探索木が書ける...
-- 3行追加するとFunctorになってもとのデータ型の関数が適用できるようになる...

main = do

  let nums = [8, 6, 4, 1, 7, 3, 5]
  let numsTree = foldr treeInsert EmptyTree nums

  print numsTree

  print $ treeElem 0 numsTree
  print $ treeElem 1 numsTree
  print $ treeElem 2 numsTree
  print $ treeElem 3 numsTree

  print ">>>> Tree as Functor >>>>"
  print $ fmap (*2) EmptyTree
  print $ fmap (*2) numsTree
