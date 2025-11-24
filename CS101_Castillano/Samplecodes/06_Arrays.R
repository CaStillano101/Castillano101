# ------------------------------------------------------------------------------
# R Basics (Part 5)

# ------------------------------------------------------------------------------
#ARRAY - can only have more than two dimensions
# use array() function to create an array and dim() to specify the dimensions

a4 <- array(c(1:24), c(3,4,2))
a4
dim(a4) #dimensions
length(a4) #length


myArray <- array(1:12, 
                 dim = c(4,3),
                 dimnames = list(
                   c("one","two","three","four"),
                   c("하나","둘","셋")
                 ))
myArray

class(myArray) 

------------------------------------------------------------------------------
  # Arrays
  
  # ------------------------------------------------------------------------------
# Creating Arrays
aVector <- c(4, 5, 2, 7, 6, 1, 5, 5, 0, 4, 6, 9)  # Create a vector
X <- array(aVector, dim = c(3, 4))                # Create a matrix using the array function
X                                                 # Print the matrix

aVector
X <- array(rep(aVector, 3), dim = c(3, 4, 3))     # Create a 3D array
X                                                 # Print the array

# ------------------------------------------------------------------------------
# Array Attributes
class(X)    # class type
length(X)  # Number of elements in array
dim(X)     # Dimension of array

dimnames(X) <- list(letters[1:3], LETTERS[1:4], c("X1", "X2", "X3"))
X

# ------------------------------------------------------------------------------
# Relationship Between Single-Mode Data Objects
X <- c(2, 6, 5, 1, 2, 8, 9, 4, 3, 1, 9, 4)   # Create a vector
X                                            # Print the vector
length(X)                                    # Vector has 12 elements
dim(X)                                       # Vectors have no "dimension"

dim(X) <- c(3, 4)                            # Assign a dimension (3 x 4)
X                                            # Print X - it is now a matrix

dim(X) <- c(2, 3, 2)                         # Assign a new dimension (2 x 3 x 2)
X                                            # Print X - it is now a 3D array

dim(X)     # X is an array
median(X)  # Median of X