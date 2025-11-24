# ------------------------------------------------------------------------------
# R Basics (Part 6)

#LIST - a collection of data which is ordered and changeable

myList <- list("volvo","mazda","honda","lexus","suzuki","cherry","geely")
myList #display in vertical manner

#Accessing list
myList[5] #accessing the list using the index 5 which has the value of "mazda"


fruitList <- list("apple","guava","orange","banana", "pineapple")
fruitList[4] #accessing the index 4 which has the content of "banana"
# ------------------------------------------------------------------------------
# Changing items in the List
myList <- list("volvo","mazda","honda","lexus")
myList

myList[[1]] <- "tesla" #changing the "volvo" item into "tesla"; the "volvo" is in index 1
myList

#adding additional item in the list
append(fruitList, "strawberry") #add "strawberry" in the last index

append(fruitList, "grape", after = 2) # add the "grape" after index 2 = "guava"


# ------------------------------------------------------------------------------
# Using "%in%" to find out if a specified item is present in the list

"Volvo" %in% myList
#the result will be false because we already change the index 1 from "Volvo" to "tesla

"tesla" %in% myList

#Removing an item from the list

newList <- myList[-2] #removing the item in index 2
newList

#Specifying a range of indexes
fruitList
fruitList[1:3]