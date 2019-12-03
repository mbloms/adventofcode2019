import Data.List


mass :: Int -> Int
mass m = (m `div` 3) - 2

readInt :: String -> Int
readInt = read

main = fmap (sum . map (mass . readInt) . words) getContents >>= print
