# When did we learn about...

Use this file as an index to look up when we covered certain topics. Topics are listed in slide order by week for both lecture and lab; consider using Ctrl + F to find keywords you need quickly.

## Functions:

Week 1

read.table



* `dev.off` - Week 3
* `file` - Week 5
* `grep` - Week 4

## Topics:

### Week 1- Lecture
* Interpreters, scripts, source codes
* Compilers
* Setting up projects in RStudio
* Commenting R Scripts
* The assignment operator, <-
* Data frames
* Indexing data frames
* Atomic vectors
* Missing data (NA)
* Arithmetic operators in R
* Booleans and Boolean operators
* Using math on Booleans
* Using functions
* Exporting data
* Priorities when writing code

### Week 1- Lab
* Extracting rows and columns from a data frame
* Sorting
* Using grouping factors for data analysis
* Using the dplyr package

### Week 2- Lecture
* Flow control (grouping lines of code, repeating lines of code, etc.)
* if statements
* if-else statements
* Visual scripting and visual programming
* Using and and or with if statements
* Abstraction
* Writing functions
* Function definition
* Variable scope
* Adding errors and warnings to a function
* Making and importing source code
* for loops
* Constructing, combining, and indexing lists
* Interrupting and skipping ahead in a loop
* while loops

### Week 2- Lab
* reading a table into R
* working with SAM files; filtering by position and coverage
* writing a function

### Week 3- Lecture
* graphics in R using base, lattice, and ggplot2
* colors in R
* RGB values in R
* ColorBrewer
* point shapes in R
* adding legends, trendlines, drawings on a plot
* plotrix
* formatting text in plots
* using emojis
* plotting to a file and closing the connection

### Week 3- Lab
* Manhattan plots

### Week 4- Lecture
* Working with text as strings
* character class
* using quotes to create a string
* importing data as strings: stringsAsFactors
* mathematical operators that work on strings
* using paste to concatenate strings together
* using strsplit to split strings
* getting the number of characters in a string
* returning part of a string by position using substring
* FormatC and PrettyNum to format numbers as text
* using match to find values from one vector in another
* Indexing with strings and named vectors
* grep, grepl for finding matches to a pattern
* sub, gsub as find and replace for patterns
* regular expressions
* regexpr, gregexpr

### Week 4- Lab
* Using string manipulation to look for motifs in protein sequences

### Week 5- Lecture
* sequential access
* random access
* text data formats
* file connections and modes
* read, write, append
* using readLines and while to read in chunks of a file
* file compression; zip, gzip, bzip2
* reading delimited text into R
* subsetting a data frame
* stringsAsFactors
* read.table and write.table to read and write delimited text
* saving objects in your R environment
* loading data into the R environment
* Unicode

### Week 5- Lab
* reading and converting a VCF files to numeric format

### Week 6- Lecture
* matrices
* matrix vs. data frame
* matrix math
* importing data as a matrix
* transpose matrices
* visualize matrices
* custom subsetting of matrices
* arrays
* working with lists
* indexing lists
* returning multiple objects from a function in a list

### Week 6- Lab
* using apply to solve problems without loops, for example VCF file conversion

### Week 7- Lecture
* overview of the organization of data structures in RStudio
* overview of how RStudio relates to the computer, e.g. RAM usage
* objects
* environments
* namespaces
* classes of objects
* numeric, integer, character, Boolean, date, POSIXct
* copy-on-modify in R
* testing and converting vector classes
* methods
* object-oriented programming
* ellipse argument
* floating point numbers vs. integers
* getting the size of an object in terms of RAM used
* binary numbers
* double-precision floating point numbers
* integer vs. numeric

### Week 7- Lab
* identifying classes of objects in the raster package and looking at the types of numbers encoded
