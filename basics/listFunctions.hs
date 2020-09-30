appendr :: Int -> [Int] -> [Int]
appendr x [] = [x]
appendr x (y:ys) = y : (appendr x ys)

attach :: [Int] -> [Int] -> [Int]
attach [] l = l
attach (x:xs) l = x : (attach xs l)

-- reverse :: [Int] -> [Int] -> [Int]
-- reverse [] = []
-- reverse (x:xs) = (reverse x) ++ [x]

isascending :: [Int] -> Bool
isascending [] = True
isascending [x] = True
isascending (x:y:ys) = (x <= y) && isascending (y:ys)

-- Mutually Recursive Function

alternating :: [Int] -> Bool
alternating l = (updown l) || (downup l)


updown :: [Int] -> Bool
updown [] = True
updown [x] = True
updown (x:y:ys) = (x < y) && (downup (y:ys))


downup :: [Int] -> Bool
downup [] = True
downup [x] = True
downup (x:y:ys) = (x > y) && (updown (y:ys))


mytake :: Int -> [Int] -> [Int]
mytake n [] = []
mytake n (x:xs)
    | n == 0 = []
    | n > 0 = x : (mytake (n-1) xs)
    | otherwise = []
