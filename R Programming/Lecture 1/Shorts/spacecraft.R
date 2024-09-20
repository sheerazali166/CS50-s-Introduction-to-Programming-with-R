
# Program 1
spacecraft <- data.frame(
  name = c("Voyager 1", "Voyager 2", "Poineer 10"),
  distance = c(163, 136, 80)
)

spacecraft

# Program 2
spacecraft$name

# Program 3
spacecraft$distance

# Program 4
spacecraft[1]

# Program 5
spacecraft[[1]]

# Program 6
spacecraft[, 1]

# Program 7
spacecraft[1 ,]

# Program 8
spacecraft[1, 1]

# Program 9
spacecraftTwo <- data.frame(
  row.names = c("Voyager 1", "Voyager 2", "Poineer 10"),
  distance = c(163, 136, 80)
)

spacecraftTwo

# Program 10
spacecraftTwo$name

# Program 11
spacecraftTwo["Voyager 1", ]

# Program 12
spacecraftThree <- data.frame(
  row.names = c("Voyager 1", "Voyager 2", "Poineer 10"),
  distance = c(163, 136, 80),
  type = c("Probe", "Probe", "Probe")
)

spacecraftThree["Voyager 1", ]








