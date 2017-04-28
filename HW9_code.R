# Counter for the number of trials
n <- 0

# Number of trials to average across
numOfTrials <- 10000

# Integer to calculate average
toAvg <- 0

# Probability set of the unfair coin (6/10)
sampSet <- c("h", "h", "h", "t", "t")

# Loop to perform 10,000 trials
while(n < numOfTrials) {
  # Number of Units moved
  points <- 0
  
  # Number of flips
  totFlips <- 0
  
  # Single game
  while(points <= 63 && points >= -32) {
    # A single flip of the coin
    flip <- sample(sampSet, 1, replace = FALSE)
    
    # Move one unit if it is heads, _ move back one unit
    if (flip == "h") {
      points <- points + 1
    } else {
      points <- points - 1
    }
    totFlips = totFlips + 1
  }
  
  # Sum up the number of flips for each trial
  toAvg <- toAvg + totFlips
  
  # Move onto the next trial
  n <- n + 1
}

# Average the number of flips for each trial
toAvg <- toAvg / numOfTrials

print(toAvg)

n <- 0
toAvg <- 0
sampSet <- c("h", "h", "h", "h", "h", "t", "t", "t", "t", "t")
while(n < numOfTrials) {
  points <- 0
  totFlips <- 0
  while(points <= 63 && points >= -32) {
    flip <- sample(sampSet, 1, replace = FALSE)
    if (flip == "h") {
      points <- points + 1
    } else {
      points <- points - 1
    }
    totFlips = totFlips + 1
  }
  toAvg <- toAvg + totFlips
  n <- n + 1
}
toAvg <- toAvg / numOfTrials

print(toAvg)