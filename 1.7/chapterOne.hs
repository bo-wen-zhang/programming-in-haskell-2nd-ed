{- 1. Give another possible calculation for the result of double (double 2).
        
    double (double 2)
    (double 2) + 
    (2 + 2) + (double 2)
    (2 + 2) + (2 + 2)
    4 + (2 + 2)
    4 + 4
    8
-}
{- 2. Show that sum [x] = x for any number x.

    The function sum is defined as:
        sum :: [Int] -> Int
        sum [] = 0
        sum (x:xs) = x + sum xs
        
    sum x = x + sum []
          = x + 0
          = x
-}
{- 3. Define a function product that produces the product of a list of numbers. 
-}
product' :: [Int] -> Int
product' [] = 1
product' (x:xs) = x * product' xs
{- 4. How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list? 
-}
reverseQsort :: Ord a => [a] -> [a]
reverseQsort [] = []
reverseQsort (x:xs) = reverseQsort larger ++ [x] ++ reverseQsort smaller
                        where 
                            smaller = [a | a <- xs, a <= x]
                            larger = [b | b <- xs, b > x]
{- 5. What would be the effect of replacing <= by < in the original definition of qsort?

    The list smaller will only consist of elements less than a, therefore any values which are the same as a will be lost in the result.
-}
                            