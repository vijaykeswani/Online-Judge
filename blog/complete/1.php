<?php
echo<<<EOHTML
         <p> <h2>Solution to Weekend programming contest</h2></br></br>
         The main thing here that you should notice is that there is not so many good strings. Moreover, any string with length less than 12 contains less than 50 different substrings. And, in total, for any length from 1 to 50 the number of strings of that length that contains no more than 50 different substrings is not greater than 2048. So, if you would have all patterns of such strings for each length precalculated, you'd be able to just iterate through all of them and try to find a match.
</br>
But how to generate such strings? It's very simple using recursion. You need to have some recursive procedure Gen(string s), where string s is a lucky string with length between 1 and 50 (inclusive). Of course, if you add any digit (4 or 7) to the right of string s the number of different substrings will increase by some positive number. So, before continue recursion, you should check the number of different substrings of s. If it's not greater than 50, you should add string s to the list of good strings of length |s|. If this number is less than 50, you can continue recursion by calling Gen(s + '4') and Gen(s + '7').
</br>
And some notes for the end. It's very fast when you are using binary masks for the representing of lucky strings. Also it's good to know that you can match input string with the current pattern in O(1) time using binary operations: let m0 be the mask created by questions marks of the input string, m1 be the mask created by digits 4 and 7 of the same string. Then mask t can be matched with the input string only if t - (t and m0) = m1.
           </p>
EOHTML;
?>
