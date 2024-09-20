
# Program 14

# Testing Floating-Point Values

# We may wish to provide floating-point values (i.e., decimal values) as input
# to average:

# Test doubles

source("~/Desktop/CS50's Introduction to Programming with R/R Programming/Lecture 6/average6.R")

library(testthat)

test_that("`averageSeven` calculates means", {
  expect_equal(averageSeven(c(1, 2, 3)), 2)
  expect_equal(averageSeven(c(-1, -2, -3)), -2)
  expect_equal(averageSeven(c(-1, 0, 1)), 0)
  expect_equal(averageSeven(c(-2, -1, 1, 2)), 0)
  expect_equal(averageSeven(c(0.1, 0.5)), 0.3)
})

test_that("`averageSeven` returns NA with NAs in input", {
  expect_equal(suppressWarnings(averageSeven(c(1, NA, 3))), NA)
  expect_equal(suppressWarnings(averageSeven(c(NA, NA, NA))), NA)
})

test_that("`averageSeven` warns about NAs in input", {
  expect_warning(averageSeven(c(1, NA, 3)))
  expect_warning(averageSeven(c(NA, NA, NA)))
})

test_that("`averageSeven` stops if `x` is non-numeric", {
  expect_error(averageSeven(c("quack!")))
  expect_error(averageSeven(c("1", "2", "3")))
})

# Notice how a test is added at the end of the first set of tests.


# Program 15

# Tolerance

# Floating-point values are unique, in that they are subject to floating-point
# imprecision.

# Let’s understand floating-point imprecision by example:

# Demonstrates floating-point imprecision

print(0.3)
print(0.3, digits=17)

# Notice how we see that 0.3 is not represented as precisely 0.3 in R. This
# is a common phenomenon across programming languages, given that there are an
# infinite number of floating-point values and a finite number of bits to
# represent them.

# Because of floating-point imprecision, tests of equality involving
# floating-point values need to allow for some tolerance. Tolerance refers to
# a range of values, above or below the expected value, that will be
# considered—for the sake of the test—to be equal to the expected value.
# Tolerance is often specified in absolute terms, such as ± .000001.

# The expect_equal function already provides a level of tolerance that is
# generally acceptable for most use cases. This default can be changed with
# the tolerance argument.

# You and your team should decide upon what level of precision is expected in
# your calculations.

# Program 16

# Test-Driven Development

# One philosophy of development is called test-driven development. In this
# mindset, the belief is that it is best to create a test first before even
# writing the source code that will be tested. Consider the following test:

# Test greet

source("greet.R")

test_that("`greet` says hello to a user", {
  expect_equal(greet("Carter"), "Hello, Carter")
})

# Notice how you can imagine that a greet function should greet a user provided
# as input.

# Looking at the test, we could create code that responds to the test:

# Notice how this code says hello to a user by name or to the world as default.

# In test-driven development, writing tests allows programmers to know what
# functionality they should implement. The benefit is that this functionality
# is then immediately testable. Further modifications should always pass the
# tests one has already written.

# Program 18

# Behavior-Driven Development

# Behavior-driven development is similar in spirit to test-driven development,
# with a greater focus on the behavior of a function in context. In
# behavior-driven development, one might describe what we want the function to
# do by explicitly naming what it should do.

# testthat comes with two functions to implement behavior-driven development,
# describe and it:

# Describe greet

source("greet2.R")

describe("greet2()", {
  it("can say hello to a user", {
    name <- "Carter"
    expect_equal(greet(name), "hello, Carter")
  })
  it("can say hello to the world", {
    expect_equal(greet(), "hello, world")
  })
})

# Notice how describe includes several code-based descriptions of what it
# (the function!) should be able to do.

# Test Coverage

# As you go off and write tests for your code, consider how comprehensive these
# tests are. Define what is critical for your code to accomplish and create
# tests that exemplify those critical tasks.

# Summing Up

# In this lesson, you learned how to visualize data in R. Specifically, you
# learned about:

# 1. Exceptions
# 2. message
# 3. warning
# 4. stop
# 5. Unit Tests
# 6. testthat
# 7. Testing Floating-Point Values
# 8. Tolerance
# 9. Test-Driven Development
# 10. Behavior-Driven Development
# 11. Test Coverage

# See you next time when we can package our code and share it with the world.






