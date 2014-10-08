import System.IO

genScale :: [(Int, Int)]
genScale = let xs = [-2, -1, 2, 3, 4, 7, 8]
               ys = [x + 12 * y | y <- [0..10], x <- xs]
           in zip [1..] ys

formatScale :: (Int, Int) -> String
formatScale (a,b) = (show a) ++ ", " ++ (show b) ++ ";\n"

combiner :: [(Int, Int)] -> String
combiner xs = let ys = map formatScale xs
              in  foldr (++) "" ys

main = writeFile "scale.txt" (combiner genScale)              