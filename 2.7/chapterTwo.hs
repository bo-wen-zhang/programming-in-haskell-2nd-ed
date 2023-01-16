{- 2. Parenthesise the following numeric expressions:
    
    2^3*4
    (2^3)*3

    2*3+4*5
    (2*3)+(4*5)

    2+3*4^5
    2+(3*(4^5))
-}
{- 3. The script below contains three syntactic errors.

    N = a 'div' length xs
        where
            a = 10
           xs = [1,2,3,4,5]

    n = a `div` length xs
        where
            a = 10
            xs = [1,2,3,4,5]
-}
{- 4. Show that last could be defined in terms of the other library functions introduced in this chapter.

    last' :: [a] -> a
    last' [] = error "empty list"
    last' xs = head (reverse xs)

    last'' :: [a] -> a
    last'' [] = error "empty list"
    last'' xs = xs !! (length xs - 1)
-}
{- 5. Show how init could be defined in terms of the other library functions introduced in this chapter.
    init' :: [a] -> [a]
    init' [] = []
    init' xs = take (length xs-1) xs

    init'' :: [a] -> [a]
    init'' [] = []
    init'' xs = reverse (tail (reverse xs))
-}