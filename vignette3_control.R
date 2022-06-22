# Install packages, import libraries, load vignette, & load data ----------

## packages
install.packages("devtools")
devtools::install_github("How-to-Learn-to-Code/rclass", build_opts = "", dependencies = TRUE)

## libraries
library(devtools)
library(htltcR)

## vignette
vignette("control")

## dataset
data(primers)

## Alternatively, to load this dataset you can download the `primers.RData` file from the GitHub page
# <https://github.com/How-to-Learn-to-Code/rclass/blob/master/data/primers.RData> and run this (given
# your pathname is correct)

load("~/Downloads/primers.RData")


# Quickly glimpse at your data --------------------------------------------

str(primers)

# my first for loop -------------------------------------------------------
## follows the structure ` for (object in list) { expression with object } `

for (i in 1:5) { print("hello world")}

ls()

## create a list of years then print the current year

yrs <- c("2000","2005","2010")

## first method for printing the current year
for (i in 1:length(yrs)) {
  print(paste("The year is", yrs[i]))
}

## second method for printing the current year, iterating through the list directly
for (j in yrs) {
  print(paste("The year is", j))
}

## nesting loops using elements in a matrix

## make a new matrix containing the numbers 1 through 6 contained in 2 columns (or 3 rows)
mat <- matrix(1:6, nrow=3)
mat

## write a nested for loop using this matrix
for (i in 1:nrow(mat)) {
  for (j in 1:ncol(mat)) {
    print(paste("mat[",i,",",j,"] = ", mat[i,j], sep = ""))
  }
}

## for loop with primers to get length of each primer in our list
for (i in primers$V1) {
  print(nchar(i))
}

## use a for loop to assign primer lengths to a variable
## create new variable called `len` to store these values
len <- numeric(length = length(primers$V1))

## create for loop that finds the length of each primer using `nchar()`
## then stores the length in the variable `len`

for (i in 1:length(primers$V1)) {
  len[i] <- nchar(primers[i,1])
}

## do crazy calculations with your new list of primer lengths
max(len)
min(len)

## In-class exercise
## Write a for loop that prints each primer
for (i in 1:length(primers$V1)) {
  print(primers[i,1])
}

## if else statements

if (TRUE) {print("TRUE")} else {print("FALSE")}
if (FALSE) { print("TRUE") } else { print("FALSE") }
if (1 > 2) { print("TRUE") } else { print("FALSE") }

x <- 1000
if (x > 100) print("`x` is greater than 100") 

y <- 25
if (y < 100) {
  if (y > 10) {
    print("10 < y < 100")
  } else {
    print("y < 10 or y < 100")
  }
} else {
  print("y < 10 or y > 100")
}

## Combining if/else statements

#single operators
1 > 0 & TRUE
FALSE | 10
1 > 0 & c(TRUE,FALSE,FALSE,TRUE)

## double operators
1 > 0 && 1000<100
1 > 0 && c(TRUE,FALSE)

TRUE || r
TRUE && r


## combine logical expression within an if/else statement
#use y = 25 as defined earlier
y <- 25

if (y < 100 && y > 10) {
  print("10 < y < 100")
} else {
  print("y < 10 or y > 100")
}


## While loops
val <- 3
while (val < 10) {
  print(val)
  val <- val+1
}