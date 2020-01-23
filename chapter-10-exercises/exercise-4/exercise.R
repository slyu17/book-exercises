# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
file <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)


# Use the View function to look at the loaded data
View(file)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- file$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
average <- mean(file$total_amount)

# What was the dollar amount of the largest grant?
max <- max(file$total_amount)

# What was the dollar amount of the smallest grant?
min <- min(file$total_amount)

# Which organization received the largest grant?
file[file$total_amount == max, "organization"]

# Which organization received the smallest grant?
file[file$total_amount == min, "organization"]

# How many grants were awarded in 2010?
count <- length(file$grant_title)
