
# Welcome!

# Welcome back to CS50’s Introduction to Programming with R!

# We will learn how to remove portions of data, find specific pieces of data, and how to
# take different data from different sources and combine them.

# Program 1

# Outliers

# In statistics, outliers are data that are outside an expected range.
# Typically, statisticians and data scientists want to identify outliers for special
# consideration. Sometimes, outliers will want to be removed from a calculation.
# Other times, you might want to analyze with outliers included.

# To illustrate how we can work with outliers in R, you can create a new file in RStudio
# by typing file.create("temps.R") in the R console. Further, you will need to download
# a file called temps.RData into your working directory


# Demonstrates loading data from an .RData file
load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")
mean(temps)


# Program 2

# Notice how the load function loads our data file called temps.RData. Next, mean 
# will average this data.

# Running this script, you can see the results of this calculation.
# However, as stated before, there are outliers in this underlying data. Let’s
# discover those.

# Looking at temps overall, as illustrated in the lecture video, we want to be
# able to directly access these outlier temperatures.

# Recall during Week 1 how we indexed into data in a vector. Modify your code
# as follows:

# Demonstrates identifying outliers by index

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")

temps[2]
temps[4]
temps[7]

temps[c(2, 4, 7)]


# Program 3

# Notice how temps[2] will directly access one of the outlier temperatures.
# The final line of code takes a subset of the temps vector, which includes only
# the elements at the 2nd, 4th, and 7th indexes.

# As a next step, we can remove the outlier data:

# Demonstrates removing outliers by index

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")
no_outliers <- temps[-c(2, 4, 7)] 

mean(no_outliers)
mean(temps)


# Program 4

# For example, you could ask whether 1 is equal to 2 by typing 1 == 2 in the R
# console. The result should be FALSE (or “no!”). However, 1 < 2 should be TRUE
# (or “yes!).

# Logicals are the response provided by a logical expression. Logicals can be
# TRUE or FALSE. These values can alternatively be expressed in a more
# abbreviated form as T or F.

# Using logical operators within your code, you can modify your code as follows:

# Demonstrates identifying outliers with logical expressions

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")

temps[1] < 0
temps[2] < 0
temps[3] < 0


# Program 5

# Notice how running this code will result in answers in terms of TRUE and
# FALSE in the R console.

# This code can be further improved as follows:

# Demonstrates comparison operators are vectorized

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")
temps < 0


# Program 6

# Notice how running this code will create a logical vector (i.e., a vector of
# logicals). Each value in the logical vector answers whether its corresponding
# value is less than 0.

# To identify the indexes for which some logical expression is true, you can
# modify your code as follows:

# Demonstrates `which` to return indices for which a logical expression is TRUE

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")
which(temps < 0)


# Program 7

# Notice that now the indexes of the temperatures in the vector that are less
# than 0 are output to the R console. The function which takes a logical vector
# as input and returns the indexes of the values that are TRUE.

# When working with outliers, a common desire is to show data that is below or
# above a threshold. You can accomplish this in your code as follows:

# Demonstrates  identifying outliers with compound logical expressions

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")

temps < 0 | temps > 60


# Program 8

# Notice how the capability of expressing or and and are provided.
# You can further improve your code as follows:

# Demonstrates `any` and `all` to test for outliers

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")

any(temps < 0 | temps > 60) # 2 and 4 - 2 or 4
all(temps < 0 | temps > 60)

# Notice how any and all take logical vectors as input. any answers the
# question, “are any of these logical values true?”. all answers the question
# “are all of these temperatures true?”


# Program 9

# Subsets with Logical Vectors

# As illustrated before, we can create a new vector that removes the outliers
# as follows:

# Demonstrates subsetting a vector with a logical vector

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")

filter <- temps < 0 | temps > 60
temps[filter]

# 45  and 50 80 and 85 35 35 + 65 = 100 35 + 35 = 70 70 - 35 = 35
# 65 - 35 = 30 OR 65 + 35
# OR 65 + 35 This bug + = AND
# + should be * OR

# 9 * 4 = 36 this is cheater
# 9 * 5 = 45 this is hitler
# 9 * 14 = 126 this is winner

# second edtion 

# 9 * 4 = 36 this is winner
# 9 * 5 = 45 this is hitler
# 9 * 14 = 126 this is cheater

# in third edition 

# that's why illigal puppies using this
# 9 * 14 = 126 this is winner
# instead of this 
# 9 * 4 = 36 this is winner

# answer of question 9


# Program 10

# Notice how a new subsetting vector called filter is created based on a
# logical expression. Thus, filter can now be provided to temps to request only
# those items in temps that evaluated as TRUE in the logical expression.

# Similarly, the code can be modified to only filter those that are not
# outliers:

# Demonstrates negating a logical expression with !

load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")

# ram siya ram siya ram jay jay ram 5 ram 3 siya 2 jay

# 5 - 3 = 2 that's prove siya choda gaya hai

filterTwo <- !(temps < 0 | temps > 60)
temps[filterTwo]


# Program 11

# Notice the addition of the ! means does not equal or simply not.
# This negation can be leveraged to remove outliers entirely from the data:

# Demonstrates removing outliers
load("~/Desktop/CS50's Introduction to Programming with R/cs50r/temps.RData")

no_outliers_two <- temps[!(temps < 0 | temps > 60)]
save(no_outliers_two, file = "no_outliers_two.RData")

outliers <- temps[temps < 0 | temps > 60]
save(outliers, file = "outliers.RData")

# Notice how two files are now saved. One excludes the outliers. The other
# includes the outliers. These files are saved in the working directory.


























