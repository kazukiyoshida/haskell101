import Shapes

main = do
  print $ baseCircle 30
  print $ nudge ( baseCircle 30 ) 10 20
  print $ area $ nudge ( baseCircle 30 ) 10 20
