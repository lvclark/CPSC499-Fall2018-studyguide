R Markdown
----------

Typing within 'single' or "double" quotes will create a string

You can also have a vector of strings

``` r
mystring <- c("B", 'and' , "C")
mystring
```

    ## [1] "B"   "and" "C"

``` r
class(mystring)
```

    ## [1] "character"

To manipulate strings further we wil import data that we used in the course week 4 on compass Take note of the option *stringsAsFactors = FALSE* this ensures character data is not converted to a categorical variable/ factor

``` r
germplasm_data <- read.table("Week_4_data/Plant.1.0 New Msa.txt",sep="\t", header = TRUE,
                             comment.char = "#", stringsAsFactors = FALSE)
```

We look at the first few lines of the data, you see we have string characters

``` r
germplasm_data[1:3,1:3]
```

    ##   X.sample_name
    ## 1  IGR-2011-005
    ## 2    UI10-00117
    ## 3    UI11-00005
    ##                                                    sample_title
    ## 1 Leaf sample from Miscanthus sacchariflorus clone IGR-2011-005
    ## 2   Leaf sample from Miscanthus sacchariflorus clone UI10-00117
    ## 3   Leaf sample from Miscanthus sacchariflorus clone UI11-00005
    ##   bioproject_accession
    ## 1          PRJNA342314
    ## 2          PRJNA342314
    ## 3          PRJNA342314

String operators ==, !=, &gt; , &lt;, &gt;=, &lt;= work

the example below is used to filter the organisms called *Miscanthus sinensis*

``` r
MSI <- germplasm_data$X.organism[germplasm_data$X.organism == "Miscanthus sinensis"]
head(MSI)
```

    ## [1] "Miscanthus sinensis" "Miscanthus sinensis" "Miscanthus sinensis"
    ## [4] "Miscanthus sinensis" "Miscanthus sinensis"

**paste** is a handy function the can be used to concatenate strings We will use paste to concatenate string columns in our data set

``` r
head(germplasm_data$X.sample_name)# this are the sample names
```

    ## [1] "IGR-2011-005" "UI10-00117"   "UI11-00005"   "UI11-00006"  
    ## [5] "UI11-00027"   "UI11-00031"

``` r
head(germplasm_data$X.organism)#organism names
```

    ## [1] "Miscanthus sacchariflorus"  "Miscanthus sacchariflorus" 
    ## [3] "Miscanthus sacchariflorus"  "Miscanthus sacchariflorus" 
    ## [5] "Miscanthus sacchariflorus"  "Miscanthus lutarioriparius"

``` r
head(paste(germplasm_data$X.sample_name, ":", germplasm_data$X.organism))
```

    ## [1] "IGR-2011-005 : Miscanthus sacchariflorus"
    ## [2] "UI10-00117 : Miscanthus sacchariflorus"  
    ## [3] "UI11-00005 : Miscanthus sacchariflorus"  
    ## [4] "UI11-00006 : Miscanthus sacchariflorus"  
    ## [5] "UI11-00027 : Miscanthus sacchariflorus"  
    ## [6] "UI11-00031 : Miscanthus lutarioriparius"

``` r
head(paste(germplasm_data$X.sample_name, ", species:", 
      germplasm_data$X.organism, sep = ""))# sep"" , removes spaces between strings
```

    ## [1] "IGR-2011-005, species:Miscanthus sacchariflorus"
    ## [2] "UI10-00117, species:Miscanthus sacchariflorus"  
    ## [3] "UI11-00005, species:Miscanthus sacchariflorus"  
    ## [4] "UI11-00006, species:Miscanthus sacchariflorus"  
    ## [5] "UI11-00027, species:Miscanthus sacchariflorus"  
    ## [6] "UI11-00031, species:Miscanthus lutarioriparius"

Use paste with common separators like tab and new line

``` r
new <- paste(germplasm_data$X.sample_name[1:10], collapse = "\n")
cat(new)#print line breaks
```

    ## IGR-2011-005
    ## UI10-00117
    ## UI11-00005
    ## UI11-00006
    ## UI11-00027
    ## UI11-00031
    ## UI11-00032
    ## UI11-00033
    ## UI11-00034
    ## UI11-00035

*nchar* counts the number of characters in a string it can also be used in vectorized manner

``` r
nchar("elephantiasis")
```

    ## [1] 13

``` r
nchar(germplasm_data$X.sample_name)#get the length of characers in a vector
```

    ##   [1] 12 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10
    ##  [24] 10 10 10 10 10 10 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
    ##  [47] 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11
    ##  [70] 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 10 10 10 10 10 10 10
    ##  [93] 10 10 10 10 10 10 10 10 11 11 11 11 11 11  8  8  8  8 13 16 16 12 14
    ## [116] 18 15 13 10 10 10 10 10 10 10 10 10 11 11 11 11 11  6  6  6  6  6  6
    ## [139]  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6
    ## [162]  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6
    ## [185]  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6
    ## [208]  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6
    ## [231]  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6
    ## [254]  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6
    ## [277]  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  6  5  5
    ## [300]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [323]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [346]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [369]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [392]  5  5  5  7  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [415]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [438]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [461]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [484]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [507]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [530]  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5  5
    ## [553]  5  5  6  8  9  9

*substring* used to subset a string,

``` r
substring("elephantiasis", 2, 5)#2-is the start nd 5 the stop positions
```

    ## [1] "leph"

``` r
head(substring(germplasm_data$X.organism, 12, nchar(germplasm_data$X.organism)))#apply to a vector
```

    ## [1] "sacchariflorus"  "sacchariflorus"  "sacchariflorus"  "sacchariflorus" 
    ## [5] "sacchariflorus"  "lutarioriparius"

*strsplit* used to subset a string,

Including Plots
---------------

You can also embed plots, for example:

![](Week_4_strings_files/figure-markdown_github/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
