set.seed(123) # gives [1] 9
die <- 1:6
rolls <- sample(die, size = 2, replace = TRUE)
roll_total <- sum(rolls)
roll_total
