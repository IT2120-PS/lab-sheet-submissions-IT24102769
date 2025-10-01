setwd('C:\\Users\\User\\Desktop\\PS Lab 09- IT24102769')
getwd()

#1. Assume that the time taken to bake a batch of cookies is normally distributed with mean 45 minutes and standard deviation 2 minutes.

#i. Generate a random sample of size 25 for the baking time.
baking_times <- rnorm(25, mean=45, sd=2)
baking_times

#ii. Test whether the average baking time is less than 46 minutes at a 5% level of significance.
#Hypothesis: H0: μ >= 46 vs H1: μ < 46
t.test(baking_times, mu=46, alternative="less")
#Conclusion:Given that the p-value (0.0005364) is below the 0.05 significance level, we can reject the null hypothesis. 
#This leads to the conclusion that the actual average baking time is less than 46 minutes.