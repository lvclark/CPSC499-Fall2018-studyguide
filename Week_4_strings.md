R Markdown
----------

Typing within 'single' or "double" quotes will create a string or character vector in R

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

To manipulate strings further we wil import data that we used in the course week 4. Take note of the option *stringsAsFactors = FALSE* this ensures character data is not converted to a categorical variable

``` r
germplasm_data <- read.table("Week_4_data/Plant.1.0 New Msa.txt",sep="\t", header = TRUE,
                             comment.char = "#", stringsAsFactors = FALSE)
```

We look at the first few lines of the data, you see we have string characters

``` r
germplasm_data[1:2,1:2]
```

    ##   X.sample_name
    ## 1  IGR-2011-005
    ## 2    UI10-00117
    ##                                                    sample_title
    ## 1 Leaf sample from Miscanthus sacchariflorus clone IGR-2011-005
    ## 2   Leaf sample from Miscanthus sacchariflorus clone UI10-00117

**String operators**

==, !=, &gt; , &lt;, &gt;=, &lt;= work

in the example below "==" is used to filter the organisms called *Miscanthus sinensis*

``` r
MSI <- germplasm_data$X.organism[germplasm_data$X.organism == "Miscanthus sinensis"]
head(MSI)
```

    ## [1] "Miscanthus sinensis" "Miscanthus sinensis" "Miscanthus sinensis"
    ## [4] "Miscanthus sinensis" "Miscanthus sinensis"

**paste** is a handy function the can be used to concatenate strings

"sep" option is used to add a separator between strings

``` r
# sep"" removes spaces between strings
paste("Miscanthus", "sinensis", sep = ":")
```

    ## [1] "Miscanthus:sinensis"

``` r
#use paste on a vector to concatenate 2 columns
head(paste(germplasm_data$X.sample_name, germplasm_data$X.organism, sep = "_"))
```

    ## [1] "IGR-2011-005_Miscanthus sacchariflorus"
    ## [2] "UI10-00117_Miscanthus sacchariflorus"  
    ## [3] "UI11-00005_Miscanthus sacchariflorus"  
    ## [4] "UI11-00006_Miscanthus sacchariflorus"  
    ## [5] "UI11-00027_Miscanthus sacchariflorus"  
    ## [6] "UI11-00031_Miscanthus lutarioriparius"

Use paste with common separators like tab and new line

``` r
new <- paste(germplasm_data$X.sample_name[1:5], collapse = "\n")
#print line breaks
cat(new)
```

    ## IGR-2011-005
    ## UI10-00117
    ## UI11-00005
    ## UI11-00006
    ## UI11-00027

**nchar** counts the number of characters in a string, it can also be used in vectorized manner

``` r
nchar("elephantiasis")
```

    ## [1] 13

``` r
#get the length of characers in a vector
nchar(germplasm_data$X.sample_name)
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

**substring** used to subset a string

``` r
#2 and 5 are the start and stop positions
substring("elephantiasis", 2, 5)
```

    ## [1] "leph"

``` r
#apply to a vector
head(substring(germplasm_data$X.organism, 12, nchar(germplasm_data$X.organism)))
```

    ## [1] "sacchariflorus"  "sacchariflorus"  "sacchariflorus"  "sacchariflorus" 
    ## [5] "sacchariflorus"  "lutarioriparius"

**strsplit** splits a string into multiple strings

returns a list one vector for each original string

``` r
strsplit("this is the day", split = " ")#split by space character
```

    ## [[1]]
    ## [1] "this" "is"   "the"  "day"

``` r
strsplit("this is the day", split = " ")[[1]]
```

    ## [1] "this" "is"   "the"  "day"

**formatC** and **prettyNum** used to convert numbers to text

``` r
mynum <- c(1000, 1.80, 475757686, 1.46585858589)
# scientific notation
formatC(mynum, digits = 3, format = "g")
```

    ## [1] "1e+03"    " 1.8"     "4.76e+08" "1.47"

``` r
#pad with zero on left
mynum2 <- 1:10
formatC(mynum2, flag="0", width=2)
```

    ##  [1] "01" "02" "03" "04" "05" "06" "07" "08" "09" "10"

``` r
mynum3 <- 1000:1005
prettyNum(mynum3, big.mark = ",")
```

    ## [1] "1,000" "1,001" "1,002" "1,003" "1,004" "1,005"

``` r
prettyNum(mynum3, big.mark = " ") 
```

    ## [1] "1 000" "1 001" "1 002" "1 003" "1 004" "1 005"

**match** can find the match of a value within a vector, handy for reordering data

``` r
match(c("a","b"), c("z","q","a","m","b"))
```

    ## [1] 3 5

A vector can have **names** attributes giving names to each of its elements

``` r
myvect <- c(2,3,4,5)
names(myvect) <- c("a","b","c","d")
myvect
```

    ## a b c d 
    ## 2 3 4 5

There are functions to assign or retrieve names fronm vectors: names, colnames,rownames

``` r
names(myvect)
```

    ## [1] "a" "b" "c" "d"

``` r
#get column names of our dataframe
colnames(germplasm_data)
```

    ##  [1] "X.sample_name"        "sample_title"         "bioproject_accession"
    ##  [4] "X.organism"           "isolate"              "cultivar"            
    ##  [7] "ecotype"              "age"                  "dev_stage"           
    ## [10] "X.geo_loc_name"       "X.tissue"             "biomaterial_provider"
    ## [13] "ploidy"               "cell_line"            "cell_type"           
    ## [16] "collected_by"         "collection_date"      "culture_collection"  
    ## [19] "disease"              "disease_stage"        "genotype"            
    ## [22] "growth_protocol"      "height_or_length"     "isolation_source"    
    ## [25] "lat_lon"              "phenotype"            "population"          
    ## [28] "sample_type"          "sex"                  "specimen_voucher"    
    ## [31] "temp"                 "treatment"            "description"

**Pattern Matching**

**grep** - find matched across a vector of strings, returns numeric index or the string itself

``` r
#make a vector called fruits
fruits <- c("orange", "banana", "apple")

grep("a", fruits)
```

    ## [1] 1 2 3

``` r
grep("an", fruits)
```

    ## [1] 1 2

``` r
grepl("an", fruits)
```

    ## [1]  TRUE  TRUE FALSE

**find and replace** using **sub and gsub**

``` r
#substitute every match
gsub("an", "xl", fruits)
```

    ## [1] "orxlge" "bxlxla" "apple"

``` r
#sub first match per string
sub("an", "xl", fruits)
```

    ## [1] "orxlge" "bxlana" "apple"

**Regular expressions** used when you want to search for an overal pattern

can be used with grep, grepexpr, sub, gsub, strsplit to search patterns

``` r
#find a match begining with Chr
grep("^Chr", c("Chr01", "blahChr", "12Chr34")) 
```

    ## [1] 1

``` r
#$ finds a fruit ending with e
fruits
```

    ## [1] "orange" "banana" "apple"

``` r
grep("e$", fruits) 
```

    ## [1] 1 3

``` r
#starts with ^a followed by any number of character then ends with $e
grep("^a.*e$", fruits)
```

    ## [1] 3

``` r
#{2} 2 matches of an
grep("(an){2}", fruits)
```

    ## [1] 2

use regular expressions to find all sample names from our dataset that stat with "JM2014-S" or "JM2014-K"

``` r
grep("^JM2014-[SK]-[0-9]{1,2}$", germplasm_data$X.sample_name,value = TRUE)
```

    ##  [1] "JM2014-S-1"  "JM2014-S-2"  "JM2014-S-3"  "JM2014-S-4"  "JM2014-S-5" 
    ##  [6] "JM2014-S-6"  "JM2014-K-1"  "JM2014-K-2"  "JM2014-K-3"  "JM2014-K-4" 
    ## [11] "JM2014-K-5"  "JM2014-K-6"  "JM2014-K-7"  "JM2014-K-8"  "JM2014-K-9" 
    ## [16] "JM2014-K-10" "JM2014-K-11" "JM2014-K-12" "JM2014-K-13" "JM2014-K-14"
    ## [21] "JM2014-K-15"

``` r
#or we can use
grep("^JM2014-[SK]-[[:digit:]]{1,2}$", germplasm_data$X.sample_name,
     value = TRUE)
```

    ##  [1] "JM2014-S-1"  "JM2014-S-2"  "JM2014-S-3"  "JM2014-S-4"  "JM2014-S-5" 
    ##  [6] "JM2014-S-6"  "JM2014-K-1"  "JM2014-K-2"  "JM2014-K-3"  "JM2014-K-4" 
    ## [11] "JM2014-K-5"  "JM2014-K-6"  "JM2014-K-7"  "JM2014-K-8"  "JM2014-K-9" 
    ## [16] "JM2014-K-10" "JM2014-K-11" "JM2014-K-12" "JM2014-K-13" "JM2014-K-14"
    ## [21] "JM2014-K-15"
