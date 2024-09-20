
# Program 8

# Unit Tests

# Unit tests are used to test our functions and programs.
# Consider the following test function for average in a separate file:

# Write test function

source("~/Desktop/CS50's Introduction to Programming with R/R Programming/Lecture 6/average6.R")

test_average <- function() {
  if (averageSeven(c(1, 2, 3)) == 2) {
    cat("`averageSeven` passed test :)\n")
  } else {
    cat("`averageSeven` failed test :(\n")
  }
}

test_average()

# Notice that this function provides a test case where the numbers 1, 2, and 3
# are provided to the average function. Then, some feedback is provided. Notice
# how, in the first line, source ensures this test file has access to the
# average function.

# It would also be wise to test negative numbers:


# Program 9

source("~/Desktop/CS50's Introduction to Programming with R/R Programming/Lecture 6/average6.R")

test_average_two <- function() {
  
  if (averageSeven(c(1, 2, 3)) == 2) {
    cat("`averageSeven` passed test :)\n")
  } else {
    cat("`averageSeven` failed test :(\n")
  }
  
  if (averageSeven(c(-1, -2, -3)) == -2) {
    cat("`averageSeven` passed test :)\n")
  } else {
    cat("`averageSeven` failed test :(\n")
  }
  
  if (averageSeven(c(-1, 0, 1)) == 0) {
    cat("`averageSeven` passed test :)\n")
  } else {
    cat("`averageSeven` failed test :(\n")
  }
  
}


test_average_two()


# Notice how additional tests are provided for positive and negative numbers
# and zero.

# We have already written 21 lines of code! Thankfully, programmers have
# already created various test packages or libraries that can be used to test
# our code.

# Program 10

# testthat

# testthat is a package for testing R code. It can be loaded by typing
# library(testthat) into your console.

# testthat includes a function called test_that can be used to test our
# function:

# Test warning about NA values

library(testthat)

source("~/Desktop/CS50's Introduction to Programming with R/R Programming/Lecture 6/average6.R")

# testthat is a package for testing R code. It can be loaded by typing
# library(testthat) into your console.

# testthat includes a function called test_that can be used to test our
# function:

test_that("`averageSeven` calculates mean", {
  expect_equal(averageSeven(c(1, 2, 3)), 2)
  expect_equal(averageSeven(c(-1, -2, -3)), -2)
  expect_equal(averageSeven(c(-1, 0, 1)), 0)
  expect_equal(averageSeven(c(-2, -1, 1, 2)), 0)
})

test_that("`averageSeven` Warn about NAs in input", {
  expect_warning(averageSeven(c(1, NA, 3)))
  expect_warning(averageSeven(c(NA, NA, NA)))
})

# Notice how the test_that function can be told to expect that that the average
# of various numbers will equal a certain value, thanks to expect_equal.
# Similarly, we can provide the test_that function instructions to
# expect_warning when the average calculation includes NA values. Further,
# notice how the test is divided into various sections. One section tests the
# calculation of the mean, while another tests the warnings.

# Program 11

# Running the above test, we discover that the order of our if statements in
# our average function may be out of order:

# Fix ordering of error handling

test_average_three <- function(x) {
  if (any(is.na(x))) {
    warning("`x` contains one or more NA values.")
    return(NA)
  } 
  if (!is.numeric(x)) {
    stop("`x` must be a numeric vector.")
  }
  sum(x) / length(x)
}

vectorThirteen <- c(150, 120, 100)
# vectorThirteen <- c(150, 120, 100, NA)
vectorFourteen <- c(150, 120, 100, "Chocolaty kinzi pinzi")

test_average_three(vectorThirteen)
test_average_three(vector)

# Program 12

# We should still test that average returns NA when given an NA value in its
# input, not just that average raises a warning!

# Test NA return values

source("~/Desktop/CS50's Introduction to Programming with R/R Programming/Lecture 6/average6.R")

test_that("`averageSeven` calculates mean", {
  expect_equal(averageSeven(c(1, 2, 3)), 2)
  expect_equal(averageSeven(c(-1, -2, -3)), -2)
  expect_equal(averageSeven(c(-1, 0, 1)), 0)
  expect_equal(averageSeven(c(-2, -1, 1, 2)), 0)
})

test_that("`averageSeven` returns NA with NAs in input", {
  expect_equal(suppressWarnings(averageSeven(c(1, NA, 3))), NA)
  expect_equal(suppressWarnings(averageSeven(c(NA, NA, NA))), NA)
})

test_that("`averageSeven` warns about NAs in input", {
  expect_warning(averageSeven(c(1, NA, 3)))
  expect_warning(averageSeven(c(NA, NA, NA)))
})

# Notice how we have two separate tests that pass NA values as input to
# average. One tests for the right return value, while the other tests for a
# warning to be raised.

# Program 13

# test_that has other functions that can assist us in testing, including
# expect_error and expect_no_error.

# Using expect_error we can modify our code as follows:

# Test stop if argument is non-numeric

source("~/Desktop/CS50's Introduction to Programming with R/R Programming/Lecture 6/average6.R")

test_that("`averageSeven` calculates mean", {
  expect_equal(averageSeven(c(1, 2, 3)), 2)
  expect_equal(averageSeven(c(-1, -2, -3)), -2)
  expect_equal(averageSeven(c(-1, 0, 1)), 0)
  expect_equal(averageSeven(c(-2, -1, 1, 2)), 0)
})

test_that("`averageSeven` returns NA with NAs in input", {
  expect_equal(suppressWarnings(averageSeven(c(1, NA, 3))), NA)
  expect_equal(suppressWarnings(averageSeven(c(NA, NA, NA))), NA)
})

test_that("`averageSeven` warns about NAs in input", {
  expect_equal(averageSeven(c(1, NA, 3)))
  expect_warning(averageSeven(c(NA, NA, NA)))
})

test_that("`averageSeven` stops if `x` is non-numeric", {
  expect_error(averageSeven(c("quack!")))
  expect_error(averageSeven(c("1", "2", "3")))
})

# Notice how this code expects an error when the input is “quack!” or when
# characters are provided instead of numbers.






