sumpair :: (Int, Int) -> Int
sumpair (x, y) = x + y

-- Mark List Example
-- Given a name find the marks

mylookup:: String -> [(String, Int)] -> Int
mylookup p [] = -1
mylookup p((name, marks): ms)
    | (p == name) = marks
    | otherwise = mylookup p ms


type Point2D = (Float, Float)

distance :: Point2D -> Point2D -> Float
distance (x1, y1) (x2, y2) = 
    sqrt((x2-x1)*(x2-x1) + ((y2-y1) * (y2-y1)))

distance2 :: Point2D -> Point2D -> Float
distance2 (x1, y1) (x2, y2) = 
    sqrt(sqr(x2-x1) + (sqr(y2-y1)))
    where
        sqr :: Float -> Float
        sqr x = x * x


-- Using where we can add localised definitions. 
-- These wont be avialble outside of the parent function.

distance3 :: Point2D -> Point2D -> Float
distance3 (x1, y1) (x2, y2) = 
    sqrt (sqr xdiff + sqr ydiff)
    where
        sqr :: Float -> Float
        sqr x = x * x
        xdiff :: Float
        xdiff = x2 - x1
        ydiff :: Float
        ydiff = y2 - y1


week2f = (l, length l)
    where l = [32,28.3..1]