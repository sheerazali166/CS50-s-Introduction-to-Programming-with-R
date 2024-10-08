
# Program 1


votes <- read.csv("~/Desktop/CS50's Introduction to Programming with R/data/votes.csv")

library(tidyverse)

ggplot(votes, aes(x = candidate, y = votes)) + 
  geom_col(aes(fill = candidate)) +
  scale_fill_viridis_d("Candidate") +
  scale_y_continuous(limits = c(0, 250)) +
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results") +
  theme_classic()  