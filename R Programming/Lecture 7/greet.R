
# Program 6

# Using and Sharing Packages

# Let’s now create a program called greet.R that uses this package.

# We can set the working directory away from ducksay by typing setwd("..") in
# the R console. This will move our working directory to one directory higher
# than that of ducksay.

# Next, we can type file.create("greet.R") to create a new file. Modify this
# file as follows:

# Demonstrates using custom package

library(ducksay)

name <- readline("What's your name? ")
greeting <- ducksayTwo(paste("hello", name))
cat(greeting)

# Notice that this program loads ducksay. Then, the code uses this new library.
# While this works on our computer, being that we developed this package
# locally, others will need to install this package. To do so, one of the
# following commands can be used:

# install.packages
# R CMD INSTALL

# As discussed in previous lectures, the top command can be run directly within
# R Studio and is built into R itself. The other command can be run in the
# computer’s terminal. It is also built into R.

# To install our package, we can run the following in our console:
# install.packages("ducksay_1.0.tar.gz")
# You can share your code using CRAN, GitHub, and even email.

# Summing Up

# In this lesson, you learned how to package your programs in R. Specifically,
# you learned about:

# 1. Packages
# 2. Package Structure
# 3. devtools
# 4. Writing Tests
# 5. Writing R Code
# 6. NAMESPACE
# 7. Testing Code
# 8. Writing Documentation
# 9. Building Packages
# 10. Updating Packages
# 11. Using and Sharing Packages

# In this course, you learned many things about R and programming with R. You
# learned how to represent data, transform data, apply functions, tidy data,
# visualize data, test programs, and package programs. In all, we hope that you
# have found this material helpful to you. We also hope that you will take what
# you have learned to do great good in the world.

# This was CS50’s Introduction to Programming with R.






