

# Program 9

# Arithmetic
# Let’s create a new program that will count votes for some fictional characters.
# Close the hello.R file.
# In your console, type file.create("count.R").
# Create your code as follows:

# maria putrah
mario <- readline("Enter votes for Mario: ")
peach <- readline("Enter votes for Peach: ")
bowser <- readline("Enter votes Bowser: ")

total <- mario + peach + bowser
print(paste("Total votes:", total))

# Program 10

# Notice how the return values of readline are stored in three variables called mario, peach,
# and bowser. The variable total is assigned the values of mario, peach, and bowser added
# together. Then, the total is printed.

# R has many arithmetic operators, including +, -, *, /, and others!
# Running this code, and typing in the number of votes, produces an error.
# It just so happens that input from the user is treated as a string instead of a number. 
# Looking at the environment, notice how the values for mario and others are stored with
# quotation marks around them. These quotes indicate that these are being stored as character
# strings instead of numbers. These values need to be numbers to be added together with +.
# In R, there are different modes (sometimes also called “types”!) as which a variable can be
# stored. Some of these “storage modes” include character, double, and integer.
# We can convert these variables to the storage mode we want as follows:

marioTwo <- readline("Enter votes for Mario: ")
peachTwo <- readline("Enter votes for Peach: ")
bowserTwo <- readline("Enter votes for Bowser: ")

marioTwo <- as.integer(marioTwo)
peachTwo <- as.integer(peachTwo)
bowserTwo <- as.integer(bowserTwo)

totalTwo <- marioTwo + peachTwo + bowserTwo
print(paste("Total votes: ", totalTwo))

# Program 11

# Notice how coercion is employed through as.integer to convert mario and others to integers.
# Running this code and looking at the environment, you can see how these values are now
# being stored as integers without quotation marks.
# This program can be further simplified as follows:

marioThree <- as.integer(readline("Enter votes for Mario: "))
peachThree <- as.integer(readline("Enter votes for Peach: "))
bowserThree <- as.integer(readline("Enter votes for bowser: "))

totalThree <- sum(marioThree, peachThree, bowserThree)
print(paste("Total votes:", totalThree))

# Program 12

# Tables

# Tables are one of the many structures we can use to organize data.
# A table is a set of rows and columns, where rows often represent some entity being stored,
# and columns represent attributes of each of those entities.

# Tables can be stored in a variety of file formats. One common format is a comma-separated
# values (CSV) file.
# In CSV files, each row is stored on a separate line. Columns are separated by commas.
# Before we begin our next program, type ls() in the R console to determine all the variables
# that are active in your environment. Then, type rm(list = ls()) to remove all those values from
# your environment. Typing ls() again, you’ll notice that there are no objects left in your
# environment.

# Next, type file.create("tabulate.R") to create our new program file. Opening your file
# explorer, open the tabulate.R file. Additionally, you should download the votes.csv file
# from this lecture’s source code and drag it into your working directory.

# Create your code as follows:

votes <- read.table("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")
View(votes)

# Program 13

# Modify your code as follows:
votesTwo <- read.table("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv", sep = ",")
View(votesTwo)

# Program 14

# Notice how the header = TRUE argument allows read.table to recognize that there is a header.
# Running this file, the table displays as intended.
# Programmers have created a shortcut to be able to do this more simply. Modify your code as
# follows:

votesThree <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv",
                       sep = ",",  header = TRUE)
View(votesThree)


# Program 15

# Notice how the header = TRUE argument allows read.table to recognize that
# there is a header. Running this file, the table displays as intended.

# Programmers have created a shortcut to be able to do this more simply. Modify
# your code as follows:

votesFour <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")
View(votesFour)

# Program 16

# Notice how read.csv accomplishes with far greater simplicity what the previous code did!
# Now that our data is loaded, how can we access it? Modify your code as follows:

votesFive <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")

votesFive[, 1]
votesFive[, 2]
votesFive[, 3]

# Notice how bracket notation is used to access values using a votes[row, column] format.
# Thus, votes[, 2] will display the numbers in the poll column.

# Program 17

# Vectors

# Vectors are a list of values all of the same storage mode.
# Considering our data frame (or table) of candidates and votes, we can access specific values
# by creating a new vector.
# We can simplify this program by calling the precise name of each column:

votesSix <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")

colnames(votesSix)

votesSix$candidate
votesSix$poll
votesSix$mail


# Turning to our original question about how to sum these values, modify your code as follows:

# Program 18

votesSeven <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")

sum(votesSeven$poll[1], votesSeven$poll[2], votesSeven$poll[3])

# Notice how sum is employed to sum the values in the first, second, and third
# rows of poll.


# Program 19


# However, this code is not dynamic. It’s quite inflexible. What if there were
# more than three candidates? Hence, we can simplify our code as follows to be
# more dynamic:

votesEight <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")

sum(votesEight$poll)
sum(votesEight$mail)

# Program 20

# Notice how the values found in the vectors votes$poll and votes$mail are summed.
# As illustrated above using bracket notation, we could also try to sum the values in each
# row across the poll and mail columns. 

# Modify your code as follows:
votesNine <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")

votesNine$poll[1] + votesNine$mail[1] 
votesNine$poll[2] + votesNine$mail[2] 
votesNine$poll[3] + votesNine$mail[3] 

# Notice how each row for poll and mail is added together.
# s this is the best approach R offers, though?


# Program 21

# Vector Arithmetic

# There are many times when we want to be able to add the rows of one vector
# with the rows of another vector. We can do this through vector arithmetic.

votesTen <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")

votesTen$poll + votesTen$mail

# Program 22

# Notice how the vectors are added element-wise. That is, the first row of the
# first vector is added to the first row of the second vector, the second row
# of the first vector is added to the second row of the second vector, and so
# on. This results in a final vector with the same number of rows as the poll
# and mail vectors

votesEleven <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")
votesEleven$total <- votesEleven$poll + votesEleven$mail

write.csv(votesEleven, "totals.csv")

# Program 23

# Notice how the final total is stored in a new vector called votes$total,
# which in fact is a new total column of the votes data frame. We then write the
# resulting votes data frame to a file called totals.csv.

# An issue arises when you look at the csv file. Notice that, by default,
# “row names” are included. These can be excluded by modifying your code as
# follows:

votesTwelve <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/votes.csv")

votesTwelve$total <- votesTwelve$poll + votesTwelve$mail

write.csv(votesTwelve, "totals.csv", row.names = FALSE)

# Notice how row.names is set to FALSE.


# Program 24

# External Data

# Today, we have seen many examples about how to use R.
# There are many instances where you may wish to use someone else’s dataset.
# You can access data from an online sources as follows:

# Demonstrates reading data from a URL
url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters<- read.csv(url)

# Program 25

# Notice how read.csv is pulling data from a defined URL.
# Looking at this data frame, you can run nrow to get the number of rows. You
# can run ncol to get the number of columns.

# Demonstrates finding number of rows and columns in a large data set
urlTwo <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
votersTwo <- read.csv(urlTwo)

nrow(votersTwo)
ncol(votersTwo)


# Program 26


# Notice how the nrow and ncol are used to determine how many rows and columns
# exist in this data. Datasets sometimes come with a code book. A code book is a
# guide to what columns are included in this data. For example, column Q1 may
# represent a specific question asked of participants in a study. By looking at
# this data set’s code book, we can tell there is a column called voter_category
# that defines a specific voting behavior for each participant.

# You might want to understand what were the various options that could have
# been selected by participants in this column. This can be accomplished through
# the unique function.

urlThree <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
votersThree <- read.csv(urlThree)

unique(votersThree$voter_category)

# Notice how unique is used to determine the possible options participants could have selected.


# Program 27

# Special Values

# For Q22, we discover in the code book that this question deals with why
# participants are not registered to vote. Looking at this data, we see NA as 
# one of the values presented. NA represents “not available” as a special value
# within R

# Other special values in R include Inf, -Inf, NaN, and NULL. Respectively,
# these mean infinite, negatively infinite, not a number, and null (or none)
# value.

# To see these possible values for Q22, we can run the following code:

# Demonstrates NA
urlFour <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
votersFour <- read.csv(urlFour)

votersFour$Q22
unique(votersFour$Q22)

# Notice how unique is employed again to discover the possible values for Q22.

# Program 28

# factor

# Q21 deals with participants’ plans to vote in a future election. In this
# column, a value of 1, 2, and 3, coincided with specific possible answers. For
# example, 1 might represent “Yes”.

# In R, we can use factor to convert the numbered values to specific text-based
# answers. For example, we can use factor to change the number 1 to correspond 
# to the text “Yes”. We can

# accomplish this by modifying our code as follows:

# Demonstrates converting vector to a factor
urlFive <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
votersFive <- read.csv(urlFive)

votersFive$Q21

factor(votersFive$Q21)

factor(
  votersFive$Q21,
  labels = c("?", "Yes", "No", "Unsure/Undecided")
)


# Program 29

# Notice how factor(voters$Q21) will show the specific levels (categories) of
# data for Q21. In the factor that appears later in the code, labels are
# applied to each level. 1, for example, is associated with “Yes”.

# There are many instances in which we may want to exclude values. In Q21, we
# may wish to exclude -1, since it’s not clear what this value represents. We
# can do so as follows:

# Demonstrates excluding values from the levels of a factor
urlSix <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
votersSix <- read.csv(urlSix)

votersSix$Q21 <- factor(
  votersSix$Q21,
  labels = c("Yes", "No", "Unsure/Undecided"),
  exclude = c(-1) 
)

# Notice how -1 is excluded.

# Summing Up

# In this lesson, you learned how to represent data in R. Specifically, you learned…

# 1. Functions
# 2. Bugs
# 3. readline
# 4. paste
# 5. Documentation
# 6. Arithmetic
# 7. Tables
# 8. Vectors
# 9. Vector arithmetic
# 10. External data
# 11. Special values
# 12. factor

# See you next time when we discuss how to transform data.

