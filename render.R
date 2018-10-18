# This script will render all of the .Rmd files into .md files that will
# display nicely on GitHub.  Edit the .Rmd files, then run this script
# before making your commit.

library(rmarkdown)

# get all the files with the .Rmd extenstion
rmdfiles <- list.files(pattern = "\\.Rmd$")

# render them to GitHub Markdown one at a time
for(f in rmdfiles){
  render(f, 
         output_format = md_document("markdown_github"))
}

