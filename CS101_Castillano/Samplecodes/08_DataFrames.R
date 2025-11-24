# ------------------------------------------------------------------------------
# R Basics (Part 7)

# DataFrames
#Creating of data frame using data.frame() function

books <- data.frame(
  author = c("Pressman", "Dennis", "Schwalbe","Nicholas"),
  year = c(2018, 2012, 2020, 2016),
  publisher = c("McGraw", "Wiley", "Cengage", "Routledge")
)
books

class(books) #checking the class type of books
is(books,"data.frame") # is() function checks the data type; Value = True if data.frame 

colnames(books)

#using "$" as an index
books$author #displaying the names of the authors

books[[2]] #accessing the year published using the [[]] double square brackets

length(books)
View(books) #viewing the books in a data frame

# ------------------------------------------------------------------------------
# Importing data frame
#note be sure that working directory points to the location of the data set

#getwd()
#setwd("C:/Users/scopus")

#reading data as csv file. If Header is present, then make the header True, if there are no
#row names, leave out the argument, If values are separated by tabs, use 'sep="\t'
scopusDF <- read.csv(file = "scopus.csv", header = TRUE, stringsAsFactors = FALSE, sep = ",")

View(scopusDF)

head(scopusDF) #displaying the first few lines of the data
tail(scopusDF) #displaying the last few lines of data

colnames(scopusDF)
names(scopusDF)[1] <- "AuthorName" #change the column names of index 1
names(scopusDF)[2] <- "AuthorID" #change the column names of index 2
colnames(scopusDF)

scopusDF[1:5,1] #displaying the 5 rows of column 1

library(dplyr)

myScopus <- scopusDF %>%
  select("AuthorName", "Title")
myScopus

#saving file
save(myScopus, file = "myScopus.Rdata") #saving file as Rdata
