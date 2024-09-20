

# Program 1

# In the file editor, type out your first program as follows:
print("hello, world")

# Program 2

# Functions

# Functions are a way by which we can run a set of instructions.
# In your code, print is a function to which "hello world" is passed. What we pass to a
# function we call an argument.
# The side effect of this function is that hello, world is displayed in the R console

# Bugs
# Bugs are unintentional mistakes that can manifest in one’s code.
# Modify your code as follows:

# Demontrates a bug
# prin("hello, world")

# Notice the missing t in prin.
# Running your code, you will notice how an error is produced.
# Debugging is the process of finding and eliminating bugs.


# Program 3

# readline

# Within R, the function readline can read input from the user.
# Modify your code as follows:

readline("What's your name? ")
print("Hello, Carter")

# Program 4

# Notice how Carter will always appear if we run this code.
# Modify your code as follows:
name <- readline("What's your name? ")
print("Hello, name")

# Program 5

# paste

# Still, running this code, notice how “name” always appears. This is clearly a bug!
# We can correct this bug as follows:
nameTwo <- readline("What's your name? ")
greeting <- paste("Hello, ", nameTwo)
print(greeting)


# Program 6

# Documentation

# The documentation for paste can be accessed by typing ?paste in the R console. Accordingly,
# the documentation for paste will appear. Reading this documentation, one can learn the various
# parameters one can use with paste.

# One parameter relevant to our current work is sep.
# Modify your code as follows:
nameThree <- readline("What's your name? ")
greetingTwo <- paste("Hello, ", nameThree, sep = "")
print(greetingTwo)

# Program 7

# Notice how sep = "" is added to the code.
# Running this program, you will see the output now works as intended.
# It just so happens that programmers have often had a need to omit these extra spaces
# by setting sep equal to "". Thus, they 
# invented paste0, which concatenates strings without any separating characters. paste0
# can be used as follows:
nameFour <- readline("What's your name? ")
greetingThree <- paste0("Hello, ", nameFour)
print(greetingThree)


# Program 8


# Notice how paste becomes paste0.
# Your program can be further simplified as follows:

# Ask user for name
nameFive <- readline("What's your name? ")

# say hello to user
print(paste("Hello,", nameFive))

