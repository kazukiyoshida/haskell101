import Data.Char
import Data.List

main = do
  -- IO String の値（getLine）に対して、色々と合成してできた関数を fmap して、
  -- IO f(string) のような状態にする.
  line <- fmap (intersperse '-' . reverse . map toUpper) getLine
  putStrLn line
