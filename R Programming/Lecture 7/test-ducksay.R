
# Program 1

source("R/ducksay.R")

library(devtools)

# Demonstrates describing behavior of `ducksay`

describe("ducksay()", {
  it("can print to the console with `cat`", {
    expect_output(cat(ducksay()))
    
  })
  it("can say hello to the world", {
    expect_match(ducksay(), "hello, world")
  })
})

# Program 4

# Testing Code

# You can now run test() to test our function. No errors should result.
# Further, you can now use ducksay in R Studio after you have loaded the
# functions of this package.
# Updating our tests, let’s test to see if a duck appears in ducksay:



describe("ducksay()", {
  it("can print to the console with `cat`", {
    expect_output(cat(ducksay()))
  })
  it("can say hello to the world", {
    expect_match(ducksay(), "hello, world")
  })
  it("can say hello with a duck", {
    duck <- paste(
      ">(. )__",
      " (____/",
      sep = "\n"
    )
    expect_match(ducksay(), duck, fixed = TRUE)
  })
})



?ducksay

# Program 5

# Updating Packages
# To update our code, we can open our test file and update our test as follows:

# Demonstrates ensuring duck r
describe("ducksay()", {
  it("can print to the console with `cat`", {
    expect_output(cat(ducksay()))
  })
  it("can say hello to the world", {
    expect_match(ducksay(), "hello, world")
  })
  it("can say hello with a duck", {
    duck <- paste(
      ">(. )___",
      "(____)",
      sep = "\n"
    )
    expect_match(ducksay(), duck, fixed = TRUE)
  })
  it("can say any given phrase", {
    expect_match(ducksay("quack!"), "quack!")
  })
})









