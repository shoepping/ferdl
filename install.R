
# The following two commands remove any previously installed H2O packages for R.
if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }
# Next, we download packages that H2O depends on.
pkgs <- c("statmod","RCurl","jsonlite")
for (pkg in pkgs) {
if (! (pkg %in% rownames(installed.packages()))) { install.packages(pkg) }
}

# Now we download, install and initialize the H2O package for R.
install.packages("h2o", type="source", repos="http://h2o-release.s3.amazonaws.com/h2o/rel-xia/2/R")

install.packages("rvest")
install.packages("Rcrawler")

install.packages("doParallel")

install.packages("readtext")
install.packages("stringi")
install.packages("quanteda")
install.packages("compiler")
install.packages("data.table")
install.packages("urltools")
install.packages("textutils")
install.packages("stopwords")
install.packages("Rcrawler")
install.packages("rvest")
install.packages("shiny")
install.packages("shinyjs")
install.packages("futures")
install.packages("promises")
