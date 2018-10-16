Comments
--------

You can add comments to your code using the `#` symbol. It can go at the beginning of a line, or in the middle of a line after whatever code is on that line.

``` r
# a full line comment
1 + 1
```

    ## [1] 2

``` r
2 + 2 # comment immediately after code
```

    ## [1] 4

The assignment operator
-----------------------

Any time you create a variable, or change the value of a variable, in R, you use the arrow operator `<-` to do it. If a line of code doesn't have this symbol, nothing in your environment changes.

``` r
x <- 2 + 3
```

Indexing a single column
------------------------

You can index a column by using $ or brackets with a comma. Remember when using commas with the brackets rows are listed before the comma and columns are listed after the comma. Also when using $ you need to list the desired column name while with brackets you need to list the number associated with the column.

``` r
#data_frame$column_name 

#data_frame[,column_number]
```

Indexing Specific Rows and Columns
----------------------------------

When you want to index certain rows and columns use the brackets. Numbers listed before the comman indicate the rows and numbers listed after the comma indicate columns.

``` r
#data_frame[1:2,1:6] This will show rows 1 through 2 and columns 1 through 6
#data_frame[2,3] This will show row 2 column 3
#data_frame[2,] This will show only row 2
```

Using c() for idexing
---------------------

When you need to index certain rows or columns that aren't next to each other (so you can't used the colon) you can list your specific rows and columns using c()

``` r
#data_frame[c(2,4,6),1:6] This will show rows 2, 4, and 6 and columns 1 through 6
```

When you want index everything but certain items
------------------------------------------------

When want index but certain items you just need to use a dash (-).

``` r
#data_frame[-c(2,4,6),1:6] This will show columns 1 through 6 and all rows will appear except except 2, 4, and 6
#data_frame[1:2,-(1:6)] This will show rows 1 through 2 and won't show columns 1 through 6
```
