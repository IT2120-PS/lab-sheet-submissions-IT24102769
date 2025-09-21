setwd("C:\\Users\\User\\Desktop\\PS Lab 06")

#Q01
#i. What is the distribution of X?
#Binomial Distribution
#Here, random vriable X has binomial distribution with n=50 and p=0.85.

#ii. What is the probability that at least 47 students passed the test?
#Binomial distribution with n=50, p=0.85
#Probability that at least 47 students passed: P(X >= 47) = 1 - P(X <= 46)
1 - pbinom(46, 50, 0.85)

#Q02
#i. What is the random variable (X) for the problem?
#X is the number of customer calls received in one hour.

#i. What is the distribution of X?
#Poisson
#X follows a Poisson distribution with parameter lambda=12.

#iii. What is the probability that exactly 15 calls are received in an hour?
#P(X=15)
#Poisson distribution with lambda=12
#Probability of exactly 15 calls: P(X=15)
dpois(15, 12)