
# Program 2

# Writing R Code

# Continuing our use of devtools we can now type the following in the R
# console: use_r("ducksay").

# This command will create a folder called R and a file called ducksay.R.

# Now, it’s time to provide some functionality within our program that we will
# package. This functionality should match the test that we wrote.

# Write code for ducksay.R as follows:

# Demonstrates defining a function for a package

ducksay <- function() {
  paste("hello, world",
         ">(. )__",
         " (____/)",
         sep = "\n")
 }

# Program 6

# Demonstrates taking an argument to print

ducksayTwo <- function(phrase = "hello, world") {
  paste(
    phrase,
      ">(. )__",
      " (____/",
      sep = "\n"
    
  
)}





