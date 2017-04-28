# Counter for the number of trials
n <- 0

# Empty vector to store the number of blows for each trial
toAvg <- vector(mode = "logical", 10000)

# Loop to perform 10,000 trials
while(n < 10000) {
  # Initial number of candles
  totalCandles <- 30
  blows <- 0
  
  # Loop until all of the candles are out
  while(totalCandles > 0) {
    # Provide a random number of candles blown out (between 1 and the remaining candles)
    candles <- sample(1:totalCandles, 1, replace = FALSE)
    
    # Subtract the candles just blown out from the total candles left
    totalCandles <- totalCandles - candles
    
    # accumulate the number of blows thus far
    blows = blows + 1
  }
  toAvg[n] <- blows
  n = n + 1
}

# Find the average number of blows across the 10,000 trials
s <- sum(toAvg)
avgBlows <- s / length(toAvg)

print(avgBlows)
