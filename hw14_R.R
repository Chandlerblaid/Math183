n <- 1259
p <- 0.48
z <- qnorm(0.975)
se <- sqrt( (p * (1-p) )/ n)
# Assuming the sample observations are independent, and 
# checking success-failure conditino of inference.
succeses <- p * n
succeses > 10
failures <- (1-p) * n
failures > 10
# Compute the margin of error
me <- z * (se)
me
# Construct the 95% Confidence Interval
ci95 <- data.frame(lb=p - me, ub=p + me)
ci95

pCA <- 0.08
pOR <- 0.088
pDiff <- pOR - pCA
nCA <- 11545
nOR <- 4691
# Compute standard error and margin of error for the proportion difference.
SE <- sqrt( ((pCA * (1 - pCA)) / nCA) +  ((pOR * (1 - pOR)) / nOR))
me <- qnorm(0.975) * SE
# Construct the 95% confidence interval.
ci95 <- data.frame(lb=pDiff - me, ub=pDiff + me )
ci95