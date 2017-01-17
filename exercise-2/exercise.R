library("stringr")
# Exercise 2: `*apply()`

# Create a *list* of 10 random numbers. Use the `runif` function to make a vector of random numbers,
# then use `as.list()` to convert that to a list.
num.list <- list(as.list(runif(10)))

# Use `lapply()` to apply the `round()` function to each number, rounding it to the nearest .1
round.num.list <- list(lapply(num.list[[1]], round))


## Bonus

# Create a variable 'sentence' that has contains a sentence of text (go for something longish).
# Make it lowercase
sentence <- list("Create a variable 'sentence' that contains a sentence of text (go for something longish)")
sentence <- lapply(sentence, tolower)

# Use the `strsplit()` function to split the sentence into vector of letters.
# Hint: split on `""` to split on everything
# Note: this will return a _list_ with 1 element (which is the vector of letters)
split.sentence <- strsplit(sentence[[1]], "") 

# Extract the vector of letters from the resulting list
letters <- split.sentence[[1]]

# Use the `unique()` function to get a vector unique letters
unique.letters <- unique(letters)

# Define a function CountOccurances that takes in two parameters: a letter and a vector letters.
# The function should return how many times that letter occurs in the vector
# Hint: use a filter!
CountOccurances <- function(letter, letters_) {
  occurances <- sum(str_count(letters_, letter))
  return(occurances)
}

# Call your CountOccurances() function to see how many times the letter 'e' is in your sentence.
CountOccurances("e", sentence)

# Use `sapply()` to apply your CountOccurances() function to each unique letter in the vector to determine its frequency!
# Convert the result into a list (using `as.list`).
unique.occurances <- list(as.list(sapply(unique.letters, CountOccurances, sentence)))

# Print the resulting list of frequencies
#print(unique.occurances)