import Data.List


mass :: Int -> Int
mass m = (m `div` 3) - 2

includeFuel f = addFuel 0 f

addFuel sum f | f <= 0 = sum
addFuel sum f = addFuel (sum + f) (mass f)

readInt :: String -> Int
readInt = read

main = fmap (sum . map (includeFuel . mass . readInt) . words) getContents >>= print
