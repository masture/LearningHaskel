doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x < 100 then x * 2 else x
triangles = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]
-- In a right angle triangles sides have the rule c > b > a or a<b<c 
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]
smallSizeRightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a <= 10, b <= 10, c <= 10]
smallSizeRightTrianglesWithPerimeter24 = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a <= 10, b <= 10, c <= 10, a + b + c == 24]
giveSolutionRightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

somefunc = [(x, y, z) | x <- [-2..2], y <- [-3..3], z<- [2..2], (not (x < y) == (y < z || z > 0)) == False]

sum5 :: Bool -> Bool -> Bool -> Bool
sum5 x y z = (not x || y) && (not y || z) && (not z || x)
