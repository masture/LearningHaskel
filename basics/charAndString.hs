import Data.Char

mycapitalise :: Char -> Char
mycapitalise ch
    | ('a' <= ch && ch <= 'z') = 
        chr (ord ch + (ord 'A' - ord 'a'))
    | otherwise = ch

occure :: Char -> String -> Bool
occure c "" = False
occure c (x:xs)
    | c == x = True
    | otherwise = occure c xs


touppercase :: String -> String
touppercase "" = ""
touppercase (c:cs) = (mycapitalise c) : (touppercase cs)

myposition :: Char -> String -> Int
myposition c "" = 0
myposition c (d:ds)
    | c == d = 0
    | otherwise = 1 + (myposition c ds)

whitespace :: Char -> Bool
whitespace ' ' = True
whitespace '\t' = True
whitespace '\n' = True
whitespace _ = False

rev :: String -> String
rev l = f [] l

f :: String -> String -> String
f al [] = al
f al (x:xs) = f (x:al) xs

mytake :: Int -> String -> String
mytake n l
    | n <= 0 || null l = []
    -- | otherwise = [(head l)] ++ (mytake (n-1) (tail l))
    | otherwise = head l:take (n-1) (tail l)


mydrop :: Int -> String -> String
mydrop n l
    | n <= 0 || null l = l
    | otherwise = mydrop (n-1) (tail l)










