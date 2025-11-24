# Basic Syntax
# ------------------------------------------------------------------------------

## Objects  ----

# Objects are things like data (in any of its forms), functions, etc.

# ------------------------------------------------------------------------------

### Note
# <-    This thing is the 'assignment operator' - it tells us to store something on the RHS as the name on the LHS
# =     this also works (but don't use it just yet) - it is better to use    <-

#-------------------------------------------------------------------------

# indicates a comment in which it will be ignored by R
# num1 <- 2*5; everything on this line is a comment

num2 <- 2*5 #comments can be placed after a statement


# The Console
3*7    # A simple command
3*     # An incomplete command

3 * 7 #spaces are generally ignored but is included for readability purpose
#it will produce the same result
  
# ------------------------------------------------------------------------------
# Things To Know about R

2
4 + 7 #addition
7/3 #division

# modulo returns the remainder of the division of the number 
# 
7 %% 3 ## division of the number to the left by the number on the right

x^2 #error because it cannot find the object x

2^2 #exponentiation 
2^3 

# When you are on a line, hit <ctrl-enter>
2**3 #exponentiation 

# ------------------------------------------------------------------------------
# 1. Everything has a name
mul_data <- 1*5
add_data <- 6 + 4
div_data <- 16 / 2
sub_data <- 16 - 2
exp_data <- 2^3
mod_data <- 7 %% 3

#displaying the contents of an object
mul_data
add_data
div_data
sub_data
exp_data
mod_data


x <- c(1:10)
x[(x>8) | (x<5)]


# ------------------------------------------------------------------------------
#accepting and displaying string
flname <-"Juan dela Cruz"
#concatenation

#concatenates input strings and returns a single character
#provides a separator operator
paste('My name is',flname) 

# concatenates input strings in a single character
# does not provide a separator operator
paste0('My name is',flname) 

#notice the difference between paste() and paste0() functions

# ------------------------------------------------------------------------------
x <- c(2,5,3,1)
y <- c(10,2,4,7)
z <- c(1,4,2,NA)

#Displaying the content of the object/s
x
y
z

#simple plotting of objects
plot(x,y)

# ------------------------------------------------------------------------------
# Pre-defined variables
pi
"pi"
'pi'
"pi" == 'pi'
TRUE
True 
true 
FALSE
F
T
3
3 == 4
TRUE
FALSE == FALSE

# Pre-defined functions
c
C
"C"

# ------------------------------------------------------------------------------
# 2. Everything is an object

c(1, "and this", "and that")
c(1, 2, 3)
range(100)
seq(100)
seq(10)
rep("This and that", 10)

?seq # to check the documentation for the function selected
seq(1, 300, 5)

seq() 
seq(from=1, to=300, by=5)
seq(to=300, from=1, by=5)
seq(300, 1, 5)
seq(300, 1, -5)

seq

# Getting the reciprocal of a number
# load the library(MASS)

library(MASS)
num_data2 <- c(10,23,67,89,5,4)
recip_num <- 1/num_data2
recip_num

#convert to fractions
frac_dat <- fractions(recip_num)
frac_dat

# ------------------------------------------------------------------------------
#### some things such as numbers and letters are made easy for us to type in.

LETTERS

letters

1:20

c(1:5, 15:20)

# ------------------------------------------------------------------------------
### Picking random numbers

runif(5)  #default is between 0 and 1

runif(5, min=0, max=100) 

numbers<-runif(5, min=0, max=100) 
numbers
round(numbers,digits=2) #two decimal point
round(numbers,digits=1) #one decimal point
round(numbers,digits=0) #round to nearest number

floor(numbers)  #round down
ceiling(numbers) #round up

# ------------------------------------------------------------------------------
# TIP Removing Objects 
rm(a)
objects(1)      # character(0) represents an empty set of objects
rm(list=ls())   # Remove all objects
# ------------------------------------------------------------------------------
