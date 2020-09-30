thirdf :: Int -> Int -> Int
thirdf x y 
    | x <= 0         = 0
    | even x         = thirdf (x `div` 2) (y+y)
    | odd x          = thirdf (x `div` 2) (y+y) + y

fourthf :: Int -> Int
fourthf n = fourthg n 0

fourthg :: Int -> Int -> Int
fourthg n a
    | n == 0        = a
    | otherwise     = fourthg q (100*a + r)
         where
            (q, r) = divMod n 10

