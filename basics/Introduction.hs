factorial :: Int -> Int
factorial 0 = 1
factorial n 
    | n < 0 = factorial(-n)
    | n > 0 = n * factorial(n-1)


accumulate :: Int -> Int 
accumulate 0 = 0
accumulate 1 = 1
accumulate n = n + accumulate (n-1)


plus :: Int -> Int -> Int
plus 0 n = n
plus n 0 = n
-- plus m n = 

newFactorial :: Int -> Int
newFactorial n
    | n == 0 = 1
    | n > 0 = n * (newFactorial(n-1))
    | n < 0 = newFactorial(-n)
    