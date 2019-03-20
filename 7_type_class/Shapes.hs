module Shapes
(
  -- Point(..), -- Pointデータ型とその値コンストラクタをすべてexportする
  -- Shape(..), -- Shapeデータ型とその値コンストラクタ（Circle, Rectangle）をすべてexportする
  Point, -- Pointデータ型だけをexportする. その作り方は含まない
  Shape, -- Shapeデータ型だけをexportする. その作り方は含まない
  area,
  nudge,
  baseCircle, -- Circleデータ型の作り方をexportする
  baseRect,   -- Rectangleデータ型の作り方を後悔する
) where

-- Point はユークリッド空間上の2点を表すデータ型.
data Point = Point Float Float deriving (Show)

-- Shape は正方形（Rectangle）か円（Circle）を表すデータ型.
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

-- area は Shape の面積を返す関数
area :: Shape -> Float
area (Circle _ r) = pi * r ^ 2
area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- nudge は図形を動かす関数
nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) dx dy = Circle (Point (x + dx) (y + dy)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) dx dy = Rectangle (Point ( x1+dx ) ( y2+dy )) (Point ( x1+dx ) ( y2+dy ))

-- 原点O に半径r のCircleを作る関数
baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

-- 原点O と第一象限の ( h, w ) を結ぶ正方形を作る関数
baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (Point 0 0) (Point width height)

-- Pointデータ型とShapeデータ型はExportするが、値コンストラクタはExportしなかった.
-- これによって外部からはデータの実装を隠すことができる.
--
-- 組み込みモジュールにあるデータ型 Data.Map はこのように値コンストラクタを
-- 隠蔽しており、ユーザーは直接 Map を作れない.
-- 代わりに Map.fromList を公開することで、ユーザーは Map を間接的に作ることができる.
