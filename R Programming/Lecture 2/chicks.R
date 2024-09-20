

# Program 12

# Subsets of Data Frames

# How can we find a subset of data we are interested in from a dataset?

# Imagine a table of data that logs each chick (a baby chicken!), the feed each
# chick is fed, and the weight of each chick. You can download chicks.csv from the lecture source code to see this data.

# Closing our previous file in RStudio, let’s create a new file in the R
# console by typing file.create("chicks.R"). Ensure you have chicks.csv in
# your working directory, then select chicks.R and write your code as follows:

# Read a CSV of data

chicks <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
View(chicks)


# Program 13

# Notice that read.csv reads the CSV file into a data frame called chicks.
# Then, chicks is viewed.

# Looking at the output of the above, notice that there are many NA values,
# representing data that is not available. Consider how this may impact a
# calculation of the average chick weight. Modify your code as follows:

# Demonstrates `mean` calculation with NA values

chicksTwo <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
average_weight <- mean(chicksTwo$weight)
average_weight


# Program 14

# Notice how running this code will result in an error, as some values are not
# available to be mathematically evaluated.

# Missing data is an expected problem within statistics. You, as the
# programmer, need to make a decision about how to treat missing data.
# You can calculate the average chick weight while removing NA values as
# follows:

# Demonstrates na.rm to remove NA values from means calculation

chicksThree <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
average_weight_two <- mean(chicksThree$weight, na.rm = TRUE)
average_weight_two


# Program 15

# Notice how na.rm = TRUE will remove all NA values for the purpose of
# computing an average with mean. Per the documentation, na.rm can be set as
# TRUE or FALSE.

# Now, let’s figure out how the food each chick eats impacts their weight:

# Demonstrates computing casein average with explicit indexes

chicksFour <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
casein_chicks <- chicksFour[c(1, 2, 3), ]
mean(casein_chicks$weight)


# Program 16

# Notice that a subset of the chicks data frame is created by explicitly
# specifying the appropriate indexes.

# This is not an efficient way of programming, since we shouldn’t expect our
# data to never change. How can we modify our code so that it is more flexible?
# We can use logical expressions to dynamically subset a data frame.

# Demonstrates logical expression to identify rows with casein feed
chicksFive <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
chicksFive$feed == "casein"


# Program 17

# Notice how the logical expression identifies whether each value in the feed
# column is equal to “casein.”

# We can leverage this logical expression within our code as follows:

# Demonstrates subsetting data frame with logical vector

chicksSix <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")

filter <- chicksSix$feed == "casein"
casein_chicks_two <- chicksSix[filter, ]
mean(casein_chicks_two$weight)


# Program 18

# As demonstrated earlier in the lecture, notice how a logical vector called
# filter is created. Then, only those rows that are TRUE in filter are brought
# into the data frame casein_chicks.

# We now have a subset of our data frame.
# You can accomplish the same result by using the function subset:

# Demonstrates subsetting with `subset`

chicksSeven <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")

casein_chicks_three <- subset(chicksSeven, feed == "casein")
mean(casein_chicks_three$weight, na.rm = TRUE)

# This data frame, called casein_chicks, is created with the subset function.


# Program 19

# Now, one may wish to filter out all NA values at the start. Consider the
# following code:

# Demonstrates indentifying NA values with `is.na`

chicksEight <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")

is.na(chicksEight$weight)
!is.na(chicksEight$weight)

chicksEight$chick[is.na(chicksEight$weight)]
# chicksEight$chick[!is.na(chicksEight$weight)]

# Notice how this code will use is.na to find NA values.


# Program 20

# Records can be entirely removed, leveraging is.na as follows:

# Demonstrates removing NA values and resetting row names

chicksNine <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")

chicksNine <- subset(chicksNine, !is.na(weight))
rownames(chicksNine)

rownames(chicksNine) <- NULL
rownames(chicksNine)

# 0 0 0 0 0 0 1 1 2 4 4 4 4 4

# Notice how this code creates a subset of chicks where is.na(weight) is equal
# to FALSE. That is, chicks only includes rows where NA is not present in the
# weight column. If you care about your data frame’s row names, though, be aware
# that—when you removed certain rows—you also removed those rows’ corresponding
# rownames. You can ensure the names of your rows still ascend sequentially by
# running rownames(chicks) <- NULL, which resets the names of all of your rows.


# Program 21

# Menus

# In R, you can present users with options. For example, you can offer the user
# the type of feed they wish to filter for the chicks.

# Consider this code:

# Demonstrates interactive program to view data by feed type

# Read and clean data
chicksTen <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
chicksTen <- subset(chicksTen, !is.na(weight))

# Determine feed options
feed_options <- unique(chicksTen$feed)

# prompt user with options
cat("1.", feed_options[1])
cat("2.", feed_options[2])
cat("3.", feed_options[3])
cat("4.", feed_options[4])
cat("5.", feed_options[5])
cat("6.", feed_options[6])

feed_choice <- as.integer(readline("Feed Type: "))

feed_options

# Notice how this code uses unique to discover the individual unique feed
# options. Each of these feed options is then outputted with cat.

# This code works in the sense that it shows the various options of feed, but
# it’s not very well formatted. How can we output the different options on
# their own line in the R console?


# Program 22

# Escape Characters

# Escape characters are characters whose output differs from the way you
# type them.

# For instance, some commonly used escape characters are \n, which prints a
# new line, or \t, which prints a tab.

# Leveraging escape characters, we can modify our code as follows:

# Demonstrates \n

# read and clean data
chicksEleven <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
chicksEleven <- subset(chicksEleven, !is.na(weight))

# determine feed options
feed_options_two <- unique(chicksEleven$feed)

# prompt user with options
cat("1.", feed_options_two[1], "\n")
cat("2.", feed_options_two[2], "\n")
cat("3.", feed_options_two[3], "\n")
cat("4.", feed_options_two[4], "\n")
cat("5.", feed_options_two[5], "\n")
cat("6.", feed_options_two[6], "\n")

feed_choice_two <- as.integer(readline("Feed type: "))

# Notice how this outputs all the options of feed on individual lines.


# Program 23

# While we have the right sort of menu being displayed, we can still improve our
# code from a design perspective. For example, why should we repeat all of these
# cat lines? Simplify your code as follows:

# Demonstrates interactive program to view data by feed type

# read and clean data
chicksTwelve <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
chicksTwelve <- subset(chicksTwelve, !is.na(weight))

# determine feed options
feed_options_three <- unique(chicksTwelve$feed)

# format feed options
formatted_options <- paste0(1: length(feed_options_three), ". ", feed_options_three)

# prompt user with options
cat(formatted_options, sep = "\n")

feed_choice_three <- as.integer(readline("Feed type: "))

# Notice how formatted_options includes all the individual feed options. Each
# element of this vector of formatted_options is printed and separated by a new
# line using cat(formatted_options, sep = "\n")


# Program 24

# Now, as we indicated earlier, our intention is to create an interactive
# program. Thus, we can now prompt the user with options:

# Demonstrates intractives program to view data by feed type

# read and clean data
chicksThirteen <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
chicksThirteen <- subset(chicksThirteen, !is.na(weight))

# determine feed options
feed_options_four <- unique(chicksThirteen$feed)

# format feed options
formatted_options_two <- paste0(1: length(feed_options_four), ". ", feed_options_four)

# prompt with user options
cat(formatted_options_two, sep = "\n")
feed_choice_four <- as.integer(readline("Feed type: "))

# print selected option
selected_feed <- feed_options_four[feed_choice_four]
print(subset(chicksThirteen, feed == selected_feed))

# Notice how the user is prompted with Feed type: , where a number can be
# converted to the text-based representation of the feed option. Then, the
# feed_choice they selected is assigned to selected_feed. Finally, the subset
# corresponding to the selected_feed is outputted to the user.

# However, you can imagine how your user may not behave as expected. For
# example, if the user inputted 0, which is not a potential choice, the output
# of our program will be strange. How can we ensure our user inputs the
# right text?


# Program 25

# Conditionals

# Conditionals are ways to determine if a condition has been met.
# Consider the following code:

# Demonstrates interactives program to view data by feed type

# read and clean data
chicksFourteen <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
chicksFourteen <- subset(chicksFourteen, !is.na(weight))

# determine feed options
feed_options_five <- unique(chicksFourteen$feed)

# format feed options
formatted_options_three <- paste0(1: length(feed_options_five), ". ", feed_options_five)

# prompt user with options
cat(formatted_options_three, sep = "\n")
feed_choice_five <- as.integer(readline("Feed type: "))

# invalid choice?
if (feed_choice_five < 1 || feed_choice_five > length(feed_options_five)) {
  cat("Invalid choice.")
}

selected_feed_two <- feed_options_five[feed_choice_five]
print(subset(chicksFourteen, feed == selected_feed_two))

# Notice how if (feed_choice < 1 || feed_choice > length(feed_options))
# determines if the user’s input falls outside a range of values. If so, the
# program displays “Invalid choice.” However, there’s still a problem: the
# program will continue to run, even with that invalid choice.


# Program 26

# if and else can be leveraged as follows to only run the final calculation
# if the user inputs a valid choice:

# Demonstrates interactive program to view data by feed type

# read and clean data
chicksFifteen <- read.csv("~/Desktop/CS50's Introduction to Programming with R/cs50r/chicks.csv")
chicksFifteen <- subset(chicksFifteen, !is.na(weight))

# determine feed options
feed_options_six <- unique(chicksFifteen$feed)

# format feed options
formatted_options_four <- paste0(1: length(feed_options_six), ". ", feed_options_six)

# prompt user with options
cat(formatted_options_four, sep = "\n")
feed_choice_six <- as.integer(readline("Feed Type: "))

# invalid choice
if (feed_choice_six < 1 || feed_choice_six > length(feed_options_six)) {
 
   cat("Invalid Choice.")

  } else {
  
    selected_feed_three <- feed_options_six[feed_choice_six]
    print(subset(chicksFifteen, feed == selected_feed_three))
}
  

# Notice, that code which is wrapped in if runs only if there is an invalid
# choice. That code which is wrapped in else will run only if the previous
# condition in if was not met.















































































































































































