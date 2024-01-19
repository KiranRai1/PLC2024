module Intro1 where

-- define named constants:
r1 = 1
r2 = b^2 + 1/b where b = 2 --r2 = 2^2 (4) + 1/2 (0.5) = 4.5

-- define a function:
diff a b  = abs (a - b) --calculating the positive absolute difference between the 2 values.
--specifies that the function is named 'diff' and takes two parameters, 'a' and 'b'.

r3 = diff (diff a a) a  where a = 1 --calculating the difference between the 2 values. Since both are 'a' they have the same value '1' thus the answer is '0'.
r4 = diff (diff a b) b  where a = 1; b = 1 --calculating the difference between the 2 values. Value 'a' = '1', and 'b' ='1' thus the answer is '0'.

-- lists by enumeration
r5 = [1,3,4,1] -- the value variable 'r5' contains these values
r6 = [1..5] -- the value variable 'r6' has values ranging from '1' to '5'

inc n = n + 1 --'inc' is a function that increments 'n' by 1. For example inc 5 would result in 6.

r7 = map inc [1..3] -- using the inc function the numbers within this range are incremented 'by 1'
r8 = map (diff 2) [1..3] --'(diff 2)', is fixed as the first argument. Always subtract 2 from its second argument, 'the list'. 
-- 'map' takes two arguments: a function and a list. It applies the function to each element of the list, creating a new list of the results.
--RESULTS FOR ABS WILL ALWAYS BE POSITIVE. For 1: abs (2 - 1) = 1 For 2: abs (2 - 2) = 0 For 3: abs (2 - 3) = 1
r9 = map sqrt [1..3] --the 'sqrt' function finds the square root of the range.

r10 = zip [1..3] (map sqrt [1..3]) -- The zip function combines two lists into a list of pairs. Each pair contains an element from the first list and the corresponding element from the second list. If the lists are of unequal length, zip stops when the shorter list ends. 
-- zip [1..3]: This part takes the list [1, 2, 3]. (map sqrt [1..3]): This part applies the sqrt function to each element of the list [1, 2, 3], resulting in [1.0, 1.414, 1.732]. RESULTS: (1, 1.0) (2, 1.414) (3, 1.732)

r11 = zip [1..3] (map sqrt [1..2])

r12 = print [1..3] --prints numbers within this range

main :: IO ()
main = pure ()


-- :t r1  't' is used for Type signatures. It tells you the type of the variable
