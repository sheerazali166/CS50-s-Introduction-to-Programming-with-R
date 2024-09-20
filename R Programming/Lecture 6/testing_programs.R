
# Program 1

# Welcome!

# Welcome back to CS50’s Introduction to Programming with R!
# Today, we will be learning about testing programs. We will see how our
# programs can go wrong, how we can handle things when they do, and how to
# methodically test our programs to ensure they behave as we expect!

# Exceptions
# Consider the following program that calculates an average:

# Define function to calculate average value in a vector
average <- function(x) {
  sum(x) / length(x)
}

vector <- c(150, 120, 100)
vectorTwo <- c(150, 120, 100, "Hello kinza")

average(vector)
average(vectorTwo)

# Notice how this program attempts to take as its input a vector of numbers
# and output the average.

# You can imagine how your user may accidentally pass characters instead of
# numbers, resulting in our average function outputting an error.

# Program 2

# These errors are called exceptions. Could there be a way by which we could
# check for potential such exceptions? Consider the following update to
# average:

# Handle non-numeric input

averageTwo <- function(xTwo) {
  if (!is.numeric(xTwo)) {
    return(NA)
  }
  sum(xTwo) / length(xTwo)
} 


vectorThree <- c(150, 120, 100)
vectorFour <- c(150, 120, 100, "Hello chocolaty kinza")


averageTwo(vectorThree)
averageTwo(vectorFour)

# Notice how a conditional, an if statement, checks to see if the vector x is
# not full of numbers. By convention in the R world, returning a value NA is
# appropriate in such an instance.

# Program 3

# message

# While this allows our program to run silently, we may wish to let the user
# know that an exception has occurred. One way to alert the user is via the
# message function:

# Message about returning

averageThree <- function(xThree) {
  if (!is.numeric(xThree)) {
    message("`xThree` must be a numeric vector. Returning NA instead.")
    return(NA)
  }
  sum(xThree) / length(xThree)
}


vectorFive <- c(150, 120, 100)
vectorSix <- c(150, 120, 100, "Chocolaty kinzi")

averageThree(vectorFive)
averageThree(vectorSix)

# Notice how a message is sent to the user about why the program is returning
# NA instead.

# Traditionally, message is intended for when something has not gone wrong:
# message is purely for informational purposes. Thus, we can escalate the
# importance of this information through a warning.

# Program 4

# warning

# We can escalate the importance of our message to a warning as follows:

# Warn about returning NA

averageFour <- function(xFour) {
  if(!is.numeric(xFour)) {
    warning("`xFour` must be a numeric vector. Returning NA instead.")
    return(NA)
  }
  sum(xFour) / length(xFour)
}

vectorSeven <- c(150, 120, 100)
vectorEight <- c(150, 120, 100, "Chocolaty kinzi pinzi")

averageFour(vectorSeven)
averageFour(vectorEight)

# Notice how the output is now a warning message.
# A warning doesn’t stop a program altogether, but it does let a programmer
# know that something has gone wrong.


# Program 5

# stop

# You can imagine situations where you don’t simply want to warn the user; You
# may want to completely stop the function. Consider the following:

# Stop instead of warn

averageFive <- function(xFive) {
  if (!is.numeric(xFive)) {
    stop("`xFive` must be a numeric vector.")
  }
  sum(xFive) / length(xFive)
}

vectorNine <- c(150, 120, 100)
vectorTen <- c(150, 120, 100, "Chocobar kinza")

averageFive(vectorNine)
averageFive(vectorTen)

# Notice how stop tells the user we cannot proceed given the input they have
# provided us.


# Program 6

# It is also possible to combine both possibilities. For example, the following
# code looks at both situations where x contains non-numeric elements.
# Similarly, this code accommodates situations where there are NA values:

# Handle NA values

averageSix <- function(xSix) {
  if (!is.numeric(xSix)) {
    stop("`xSix` must be a numeric vector.")
  }
  if (any(is.na(xSix))) {
    warning("`xSix` contain one or more NA values.")
    return(NA)
  }
  sum(xSix) / length(xSix)
}


vectorEleven <- c(150, 120, 100)
vectorTwelve <- c(150, 120, 100, "Chocobar kinzi")

averageSix(vectorEleven)
averageSix(vectorTwelve)

# Notice how two if statements are provided.

