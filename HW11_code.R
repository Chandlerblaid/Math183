#~~~~~~~~~~~~~ R1 ~~~~~~~~~~~~~~~~~

# Mean of baby weights
x_bar <- mean(smokingBabies$weight)

# SD of baby weights
sx <- sqrt(var(smokingBabies$weight))

# Histogram of the babies' weights
h <- hist(smokingBabies$weight)

#~~~~~~~~~~~~~ R2 ~~~~~~~~~~~~~~~~~

#   The conditions of the sample were met to do justify
# inference on mu of the average weight of babies born to
# NC smokers. This is because the sample is less than 10%
# of the population of babies born to and participating 
# smokers that gave birth were chosen at random, thus 
# independent. Also, the number of people in the sample
# is large enough to get a graph that is near normal.

#~~~~~~~~~~~~~ R3 ~~~~~~~~~~~~~~~~~

p_val <- pnorm(x_bar, mean = 7.18, sd = (sx/sqrt(50)), lower.tail = TRUE)

# [1] 0.0379445

#~~~~~~~~~~~~~ R4 ~~~~~~~~~~~~~~~~~

ttest <- t.test(smokingBabies$weight, mu=7.18, alternative = "less")

#
# One Sample t-test
# 
# data:  smokingBabies$weight
# t = -1.7751, df = 49, p-value = 0.04105
# alternative hypothesis: true mean is less than 7.18
# 95 percent confidence interval:
#   -Inf 7.157747
# sample estimates:
#   mean of x 
# 6.779 