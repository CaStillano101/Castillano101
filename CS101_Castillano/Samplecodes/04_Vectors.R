# ------------------------------------------------------------------------------
# R Basics (Part 3)

# Vectors
# ------------------------------------------------------------------------------
# Creating Elements with the c() Function

cars <- c("volvo","honda","mazda","lexus")
cars

length(cars) #determine the number of items a vector has

class(cars) #checking the data type of car

numericVector <- c(2, 6, 8, 4, 2, 9, 4, 0)  # Vector with numeric values
numericVector    # Print the numeric vector

length(numericVector)
typeof(numericVector)

mycolors <- c("blue", "red", "yellow", "green", "orange", "black")
mycolors
length(mycolors)

typeof(mycolors) # checking the data type of an object

#using colon operator ":" to generate vectors in sequence
numSeq <- 1:10
numSeq

c("Hello", "There")        # Vector of characters
c(F, T, T, F, F, T, F, F)  # Vector of logicals
c(3+4i, 5+9i, 3+7i)        # Vector complex numbers

# ------------------------------------------------------------------------------
# NOTE: Logical Values
c(T, F, TRUE, FALSE)

# ------------------------------------------------------------------------------
# Creating vectors
X <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)   # Create a simple vector of numerics
X                                       # Print the vector

# check the difference of these functions
class(X)                                
typeof(X)
mode(X)

c(X, X, X, X, X)                        # Combine vectors

# ------------------------------------------------------------------------------
# Creating a Sequence of Integers
X <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)   # Create a simple vector of numerics
X                                       # Print the vector
1:100   # Series of values from 1 to 100

# Sequences
1:5
5:1
-1:1
1.3:5.3

# Combining Sequences
com_data <- c(0:4, 5, 4:0)
com_data

# Multiplying Sequences
2*1:10

# ------------------------------------------------------------------------------
# Using sort() to sort the vector alphabetically or numberically
#sort(numericVector,decreasing = FALSE) -- default value
sort(numericVector) #sorting the numbericVector variable from lowest to highest
sort(numericVector, decreasing = TRUE)

#order is in terms index
numericVector
order(numericVector)

#rank in terms of index
numericVector
rank(numericVector)

#sort(numericVector,decreasing = TRUE) #sort the items from highest to lowest

# ------------------------------------------------------------------------------
# Using length() function to determin the number of items in a vector
length(cars) #determine how many items a vector has

# ------------------------------------------------------------------------------
# Creating a Sequence of Numeric Values with the seq Function
1:10
seq(1, 10)

#the 3rd argument specifies how much to jump by
seq(1,10,2) #specifies that in every number you need to jump by 2


# The by argument
seq(1, 10, by = 0.5)   # Sequence from 1 to 10 by 0.5
seq(2, 20, by = 2)     # Sequence from 2 to 20 by 2
seq(5, -5, by = -2)    # Sequence from 5 to -5 by -2

seq(2,6,by = 0.4)

# The length argument
seq(1.5, 8.5, by = 0.5)     # Sequence from 1.5 to 8.5 by 0.5
seq(1.3, 8.4, length = 10)  # Sequence of 10 values from 1.3 to 8.4

# ------------------------------------------------------------------------------
# Creating a Sequence of Repeated Values
rep("Hello", 5)  # Repeat "Hello" 5 times

X <- c(1, 2, 3)
rep(X, 3)        # Repeat the X vector 3 times

X <- 1:10
rep(X, 5)        # Repeat the X vector 5 times

rep(1:10, 5)      # Repeat 1:10 5 times

rep( c("A", "B", "C"), c(4, 1, 3))

# Repeated multiple sequences
rep( c("A", "B", "C"), c(3, 3, 3))
rep( c("A", "B", "C"), rep(3, 3))
rep( c("A", "B", "C"), each = 3)

rep( c("A", "B", "C"), 3)           # Repeat the vector 3 times
rep( c("A", "B", "C"), c(4, 1, 3))  # Repeat each value a specific number of times
rep( c("A", "B", "C"), each = 3)    # Repeat each value 3 times

# ------------------------------------------------------------------------------
# Vector Attributes
X <- c(6, 8, 3, 1, 7)  # Create a simple vector
X                      # Print the vector
class(X)                # The class/data type of the vector
str(X)

length(X)              # Number of elements

# ------------------------------------------------------------------------------
#using "factor" where Female = 1 and Male = 2 when converted into integer
gender <- c("Male","Female","Female","Male","Female", "Male", "Male")
gender <- factor(gender)
gender

as.integer(gender)

grp <- c("control", "treatment","control","treatment")
grp <-factor(grp)
grp

as.integer(grp)

# ------------------------------------------------------------------------------
# NOTE: Missing Values
Y <- c(4, 5, NA, 1, NA, 0)
Y
length(Y)

# Element names
X <- c(6, 8, 3, 1, 7)  # Create a simple vector
X                      # Print the vector
names(X)               # Element names of X

# An example of element names to identify values
genderFreq <- c(165, 147)
genderFreq

genderFreq <- c(Female = 165, Male = 147)  # Create a vector with element names
genderFreq

genderFreq <- c(165, 147)                  # Create a vector with no element names
genderFreq
names(genderFreq) <- c("Female", "Male")   # Assign element names
genderFreq

genderFreq           # Print the vector
names(genderFreq)    # Return the element names


b1 <- c(31,4,15,67,55)
b1
order(b1) #order the items using the index

rank(b1) #rank the items