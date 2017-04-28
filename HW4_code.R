# R1. Sampling from this vector gives us the payouts in 
#     the ratios dictated by the probability model, because
#     the vector represents the expected number of occurences
#     of each 'x' out of 12 trials. Essentially giving the 
#     probability of each occurance.
game <- c(rep(-4, 6), 72, rep(-12, 5))

trials <- sample(game, 10000, replace = TRUE)
sum <- sum(trials)
mean <- sum / length(trials)

sqSums = 0
for (t in trials) {
  sqSums = sqSums + (t-mean)^2
}
variance <- sqSums/length(trials)
sd <- variance^(1/2)

print(paste("The class value for E(x) = ", -1, " vs. My value for E(x) = ", mean))
print(paste("The class value for sd = ", 22.34, " vs. My value for sd = ", sd))


# R3.

# This is the mean for multiplying the values E(2X) = 2*E(X)
meanMul <- 2 * mean

# The Var(2X) = 2^2 * Var(X) = 4*Var(X)
varianceMul <- 4 * variance
sdMul <- varianceMul^(1/2)

# The mean for adding the games E(X1+X2) = E(X1) + E(X2)
meanAdd <- mean + mean

# The Var(X1+X2) = Var(X1) + Var(X2)
varianceAdd <- variance + variance
sdAdd <- varianceAdd^(1/2)