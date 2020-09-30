pkgcd :: Int -> Int -> Int
pkgcd a 0 = a
pkgcd a b
    | a >= b      = pkgcd b (mod a b)
    | otherwise   = pkgcd b a

largestdiv :: Int -> Int 
largestdiv n = divsearch n (n-1)

divsearch :: Int -> Int -> Int
divsearch m i
    | (mod m i) == 0  = i
    | otherwise       = divsearch m (i-1)


isprime :: Int -> Bool
isprime n
    | (divsearch n (n-1)) == 1   = True
    | otherwise            = False


intlog :: Int -> Int -> Int
intlog k 1 = 0
intlog k n
    | n >= k    = 1 + intlog k (div n k)
    | otherwise = 0

intreverse :: Int -> Int 
intreverse n
    | n < 10 = n
    | otherwise = (intreverse (div n 10)) + 
                  (mod n 10) * 
                  (power 10 (intlog 10 n))

power :: Int -> Int -> Int
power m 0 = 1
power m n = m * (power m (n-1))
