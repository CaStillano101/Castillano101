age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 
         34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 
         35, 24, 33, 41)
length(age)
1 / age
new_age <- c(age, 0, age)
length(new_age)
#Explanation: 34 (original) + 1 (zero) + 34 (again) = 69
sort(age)
min(age)
max(age)
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)
length(data)
double_data <- data * 2
double_data
seq1 <- seq(1, 100)
seq2 <- seq(20, 60)
mean(seq2)
sum(seq(51, 91))
seq3 <- seq(1, 1000)
head(seq3, 10)
#How many data points from 8.1 to 8.4? 8.1: 100, 8.2: 41,  8.3: 1 (mean is one value), 8.4: 1 (sum is one value), Total: 100 + 41 + 1 + 1 = 143
Filter(function(i) { all(i %% c(3, 5, 7) != 0) }, seq(1, 100))
rev(seq(1, 100))
nums <- 1:24
multiples <- nums[nums %% 3 == 0 | nums %% 5 == 0]
multiples
sum(multiples)
#How many data points from 10 to 11? Q10: 100 values, Q11: 11 values, Total: 111
{
  x <- 0
  x + 5
}
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score[2]
score[3]
a <- c(1, 2, NA, 4, NA, 6, 7)
print(a, na.print = "-999")
#Explanation: Actual values remain NA. Only printed as -999.
x <- c(2, 3, 4)
class(x)           
class(x) <- "foo"
class(x)          
name <- readline(prompt = "Input your name: ")
age <- readline(prompt = "Input your age: ")
print(paste("My name is", name, "and I am", age, "years old."))
print(R.version.string)

#result

#> age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 
#           +          34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 
#           +          35, 24, 33, 41)
#> length(age)
#[1] 34
#> 1 / age
#[1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556 0.01923077 0.02564103 0.02380952
#[10] 0.03448276 0.02857143 0.03225806 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000
#[19] 0.01754386 0.02040816 0.02000000 0.02702703 0.02173913 0.04000000 0.05882353 0.02702703 0.02380952
#[28] 0.01886792 0.02439024 0.01960784 0.02857143 0.04166667 0.03030303 0.02439024
#3> new_age <- c(age, 0, age)
#> length(new_age)
#[1] 69
#> #Explanation: 34 (original) + 1 (zero) + 34 (again) = 69
#  > sort(age)
#[1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42 46 49 50 51 52 53 57
#> min(age)
#[1] 17
#> max(age)
#[1] 57
#> data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)
#> length(data)
#> double_data <- data * 2
#> double_data
#[1] 4.8 5.6 4.2 5.0 4.8 4.4 5.0 4.6 5.0 4.6 4.8 5.4
#> seq1 <- seq(1, 100)
#> seq2 <- seq(20, 60)
#> mean(seq2)
#[1] 40
#> sum(seq(51, 91))
#[1] 2911
#> seq3 <- seq(1, 1000)
#> head(seq3, 10)
#[1]  1  2  3  4  5  6  7  8  9 10
#> #How many data points from 8.1 to 8.4? 8.1: 100, 8.2: 41,  8.3: 1 (mean is one value), 8.4: 1 (sum is one value), Total: 100 + 41 + 1 + 1 = 143
#  > Filter(function(i) { all(i %% c(3, 5, 7) != 0) }, seq(1, 100))
#[1]  1  2  4  8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 44 46 47 52 53 58 59 61 62 64 67 68 71 73 74 76
#[37] 79 82 83 86 88 89 92 94 97
#> rev(seq(1, 100))
#[1] 100  99  98  97  96  95  94  93  92  91  90  89  88  87  86  85  84  83  82  81  80  79  78  77  76  75  74
#[28]  73  72  71  70  69  68  67  66  65  64  63  62  61  60  59  58  57  56  55  54  53  52  51  50  49  48  47
#[55]  46  45  44  43  42  41  40  39  38  37  36  35  34  33  32  31  30  29  28  27  26  25  24  23  22  21  20
#[82]  19  18  17  16  15  14  13  12  11  10   9   8   7   6   5   4   3   2   1
#> nums <- 1:24
#> multiples <- nums[nums %% 3 == 0 | nums %% 5 == 0]
#> multiples
#[1]  3  5  6  9 10 12 15 18 20 21 24
#> sum(multiples)
#[1] 143
#> #How many data points from 10 to 11? Q10: 100 values, Q11: 11 values, Total: 111
#  > {
#    +   x <- 0
#    +   x + 5
#    + }
#[1] 5
#> score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
#> score[2]
#[1] 86
#> score[3]
#[1] 92
#> a <- c(1, 2, NA, 4, NA, 6, 7)
#> print(a, na.print = "-999")
#[1]    1    2 -999    4 -999    6    7
#> #Explanation: Actual values remain NA. Only printed as -999.
#  > x <- c(2, 3, 4)
#> class(x)           
#[1] "numeric"
#> class(x) <- "foo"
#> class(x)          
#> name <- readline(prompt = "Input your name: ")
#Input your name: age <- readline(prompt = "Input your age: ")
#> print(paste("My name is", name, "and I am", age, "years old."))
#[1] "My name is age <- readline(prompt = \"Input your age: \") and I am 34 years old."
#[2] "My name is age <- readline(prompt = \"Input your age: \") and I am 28 years old."
##[4] "My name is age <- readline(prompt = \"Input your age: \") and I am 36 years old."
#[5] "My name is age <- readline(prompt = \"Input your age: \") and I am 27 years old."
#[6] "My name is age <- readline(prompt = \"Input your age: \") and I am 18 years old."
#[7] "My name is age <- readline(prompt = \"Input your age: \") and I am 52 years old."
#[8] "My name is age <- readline(prompt = \"Input your age: \") and I am 39 years old."
#[9] "My name is age <- readline(prompt = \"Input your age: \") and I am 42 years old."
#[10] "My name is age <- readline(prompt = \"Input your age: \") and I am 29 years old."
#[11] "My name is age <- readline(prompt = \"Input your age: \") and I am 35 years old."
#[12] "My name is age <- readline(prompt = \"Input your age: \") and I am 31 years old."
#[13] "My name is age <- readline(prompt = \"Input your age: \") and I am 27 years old."
#[14] "My name is age <- readline(prompt = \"Input your age: \") and I am 22 years old."
#[15] "My name is age <- readline(prompt = \"Input your age: \") and I am 37 years old."
#[16] "My name is age <- readline(prompt = \"Input your age: \") and I am 34 years old."
#[17] "My name is age <- readline(prompt = \"Input your age: \") and I am 19 years old."
#[18] "My name is age <- readline(prompt = \"Input your age: \") and I am 20 years old."
#[19] "My name is age <- readline(prompt = \"Input your age: \") and I am 57 years old."
#[20] "My name is age <- readline(prompt = \"Input your age: \") and I am 49 years old."
#[21] "My name is age <- readline(prompt = \"Input your age: \") and I am 50 years old."
#[22] "My name is age <- readline(prompt = \"Input your age: \") and I am 37 years old."
#[23] "My name is age <- readline(prompt = \"Input your age: \") and I am 46 years old."
#[24] "My name is age <- readline(prompt = \"Input your age: \") and I am 25 years old."
#[25] "My name is age <- readline(prompt = \"Input your age: \") and I am 17 years old."
#[26] "My name is age <- readline(prompt = \"Input your age: \") and I am 37 years old."
#[27] "My name is age <- readline(prompt = \"Input your age: \") and I am 42 years old."
#[28] "My name is age <- readline(prompt = \"Input your age: \") and I am 53 years old."
#[29] "My name is age <- readline(prompt = \"Input your age: \") and I am 41 years old."
#[30] "My name is age <- readline(prompt = \"Input your age: \") and I am 51 years old."
#[31] "My name is age <- readline(prompt = \"Input your age: \") and I am 35 years old."
#[32] "My name is age <- readline(prompt = \"Input your age: \") and I am 24 years old."
#[33] "My name is age <- readline(prompt = \"Input your age: \") and I am 33 years old."
#[34] "My name is age <- readline(prompt = \"Input your age: \") and I am 41 years old."
#> print(R.version.string)
#[1] "R version 4.5.1 (2025-06-13)"
