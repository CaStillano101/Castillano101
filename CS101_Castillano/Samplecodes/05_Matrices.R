# ------------------------------------------------------------------------------
# R Basics (Part 4)

# Matrices
#using matrix() function to create a matrix specifying the nrow and ncol

matrix(c(1:12), nrow = 3, ncol = 4) #rows will be 3 and columns will be 4

#column-major order
matrix(c(1:12), nrow = 3) #giving only one dimension


x2 <- matrix(c(3,4,1,5,6,2), nrow = 3) #generate a matrix of 3 rows and 2 columns 
x2                                    #since there are six elements in the matrix

# ------------------------------------------------------------------------------
#Accessing elements using indices, bracket []

x2[3,2] #accessing the content of the matrix; 3rd row, 2nd column

#creating a matrix = two rows and 3 columns
a2 <- matrix(c("apple","banana", "orange", "grapes","strawberry","guava"),nrow = 2, ncol = 3)
a2

a2[1,2]

# ------------------------------------------------------------------------------

# Combining Vectors to create a matrix
cbind(1:3, 3:1, c(2, 4, 6), rep(1, 3)) #using cbind() - additional columns in matrix

# ------------------------------------------------------------------------------
# NOTE: Recycling
cbind(1:3, 3:1, c(2, 4, 6), 1)


# Using rbind
rbind(1:3, 3:1, c(2, 4, 6), rep(1, 3))


# Creating a Matrix with a Single Vector
matrix(1:12)
matrix(1:12, nrow = 3, ncol = 4)
matrix(1:12, nrow = 3)

matrix(1:12, nrow = 3, byrow = FALSE)
matrix(1:12, nrow = 3, byrow = TRUE)


# ------------------------------------------------------------------------------
# Matrix Attributes
aVector <- c(4, 5, 2, 7, 6, 1, 5, 5, 0, 4, 6, 9)  # Create a vector
X <- matrix(aVector, nrow = 3)                    # Create a matrix
X                                                 # Print the matrix

length(X)   # Number of elements

dim(X)     # Dimension of the matrix
dim(X)[1]  # Number of rows
dim(X)[2]  # Number of columns

nrow(X)  # Number of rows
ncol(X)  # Number of columns

freqMatrix <- cbind( c(75, 52, 38), c(68, 49, 30))
freqMatrix
dimnames(freqMatrix) <- list(c("18-35", "26-35", "36+"), c("Female", "Male"))
freqMatrix

dimnames(freqMatrix) 

# ------------------------------------------------------------------------------
matrix(1:12, nrow=3, byrow=TRUE)

diag(3)



