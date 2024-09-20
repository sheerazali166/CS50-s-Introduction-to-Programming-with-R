
# Program 1

temps <- c(60, 55, 50, 60, 60, 55, 65, 60, 60)
temps

# Program 2
matrix(temps, nrow = 3, ncol = 3)

# Program 3
weather <- matrix(temps, nrow = 3, ncol = 3)
weather

# Program 4
weather[1, ]

# Program 5
weather[, 1]

# Program 6
weather[1, 1]

# Program 7
?matrix

# Program 8
load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")
temps

# Program 9
array(temps, dim = c(3, 3, 3))

# Program 10
weather <- array(temps, dim = c(3, 3, 3))
weather[, , 1]

# Program 11
weather[, , 1]
weather[, , 2]
weather[, , 3]

# Program 12
?array

