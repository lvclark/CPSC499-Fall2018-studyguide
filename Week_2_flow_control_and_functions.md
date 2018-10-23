If/else, loops, and function
----------------------------

Flow control and grouping
-------------------------

Curly brackets ({}) can be used to group commands allowing for the included code to be skipped in certain circumstances.

Using AND and OR with IF
------------------------

& = vectorized AND | = vectorized OR It is important to use (&& or ||) in an if statement if you only want to evaluate one element, not whole vector

Functions
---------

Anatomy function name - how you can call function in the future arguments - inputs return statement - determines output of function function body - contains all parts of the function comments - explain the function

    ## [1] "Hi"

    ## [1] "Hi"

Variable scope
--------------

Variables within the body of the function come from the arguments stated in the beginning of the function. Arguments and variables created in the function are not accessible within the global enviornment

Errors and Warnings
-------------------

"stop" will throw an error and stop execution of the function "warning" will throw a warning but continue the execution of the function. "message" will print a custom message same as an error or warning.

Source Code
-----------

You can load functions from other files using the source function

Loops
-----

Command will be ran on each vector character until end is reached.

Interrupting and Skipping ahead
-------------------------------

"break" or "next" can be used within a loop

While loop
----------

This command loops through a command until condition A is untrue

    ## [1] 2
    ## [1] 3
    ## [1] 4
    ## [1] 5
