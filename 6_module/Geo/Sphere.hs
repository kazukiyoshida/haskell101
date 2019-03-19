module Geo.Sphere
( volume
, area
) where

-- 階層的モジュール

volume :: Float -> Float
volume radius = (4.0 / 3.0) * pi * ( radius ^ 3 )

area :: Float -> Float
area r = 4 * pi * ( r ^ 2 )
