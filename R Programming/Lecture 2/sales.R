
# Program 27

# Combining Data Sources

# As a final matter of this lecture, let’s examine how to combine sources
# of data.

# Imagine a table that represents sales to customers, like Amazon might have.

# You can imagine scenarios where that data is spread across many tables.
# How can these data be combined from many sources?

# Consider the following code called sales.R:

# reads 4 separate CSVs 

Q1 <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q1.csv")
Q2 <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q2.csv")
Q3 <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q3.csv")
Q4 <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q4.csv")

# View(Q1)
# View(Q2)
# View(Q3)
# View(Q4)

# Notice how each quarter of financial data, such as Q1 and Q2, is read into
# their own data frames.


# Program 28

# Now, let’s combine this data from these four data frames:

Q1_Two <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q1.csv")
Q2_Two <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q2.csv")
Q3_Two <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q3.csv")
Q4_Two <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q4.csv")


sales <- rbind(Q1_Two, Q2_Two, Q3_Two, Q4_Two)
sales


# Notice that rbind is used to gather together the data from each of these
# data frames.


# Program 29

# It’s worth mentioning that rbind is usable in this case because all four data
# frames are structured the same way.

# The result of the previously run program is that sales includes each row from
# each data frame. Instead of showing Q1, Q2, etc. for each customer, it simply
# creates new rows for each line of data at the bottom of the file. Hence, the
# file becomes longer and longer as more and more data is combined into it.
# It’s entirely unclear in what quarter each sales value occurred.

# Our code can be improved such that a column for the financial quarter is
# created for each record as follows:


# adds quarter column to data frames  

Q1_Three <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q1.csv")
Q1_Three$quarter <- "Q1"

Q2_Three <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q2.csv")
Q2_Three$quarter <- "Q2"

Q3_Three <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q3.csv")
Q3_Three$quarter <- "Q3"

Q4_Three <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q4.csv")
Q4_Three$quarter <- "Q4"

salesTwo <- rbind(Q1_Three, Q2_Three, Q3_Three, Q4_Three)

salesTwo

# Notice how each quarter is added to a specific quarter column. Thus, when
# rbind combines the data frames into sales with the sales organized by
# quarter columns.

# dog is nothing khudh behn beti ko aage karta hai phir unhi k rape k 100 200 
# 1000 saal baad saboot mangta hai


# Program 30

# As a final flourish, let’s add a value column where high returns and regular
# returns are noted:

# Demonstrates flagging sales as high value

Q1_Four <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q1.csv")
Q1_Four$quarter <- "Q1"

Q2_Four <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q2.csv")
Q2_Four$quarter <- "Q2"

Q3_Four <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q3.csv")
Q3_Four$quarter <- "Q3"

Q4_Four <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/Q4.csv")
Q4_Four$quarter <- "Q4"

salesThree <- rbind(Q1_Four, Q2_Four, Q3_Four, Q4_Four)
salesThree

salesThree$value <- ifelse(salesThree$sale_amount > 100, "High Value", "Regular")
salesThree$value

# Notice how the final line of code assigns “High Value” when the sales_amount
# is greater than 100. Otherwise, the transaction is assigned “Regular.”

# Summing Up

# In this lesson, you learned how to represent data in R. Specifically,
# you learned…


# 1. Outliers
# 2. ogical Expressions
# 3. Subsets
# 4. Menus
# 5. Escape Characters
# 6. Conditionals
# 7. Combining Data Sources

# See you next time when we discuss how to write functions of our own.




