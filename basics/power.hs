power :: Int -> Int -> Int
power x 0 = 1
power x n = x * (power x (n - 1))
-- power (div 3 0) 0 
-- Above expression does not throw an exception as Haskell does lazy evaluation.