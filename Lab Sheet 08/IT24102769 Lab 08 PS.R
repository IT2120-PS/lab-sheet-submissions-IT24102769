##Setting the directory
setwd("D:\\Probability and Statistics Y2S1\\IT24102769 Lab 08 PS")

##Importing the data set
data<-read.table ("Data - Lab 8.txt", header=TRUE)
fix(data)
attach (data)

#Question 01
popmn<-mean (Nicotine)
popvar<-var (Nicotine)

#Question 02
#1st create null vectors to store sample data sets.
samples<-c()
n<-c()

for (i in 1:30) {
  s<-sample (Nicotine, 5, replace=TRUE)
  samples<-cbind(samples,s)
  #correction: This ensures column names are 's1', 's2', ..., 's30' instead of all 's1'.
  n<-c(n,paste('s',i,sep="")) 
}

#assign column names for each sample created. Names have stored earlier under "n" variable.
colnames (samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#Question 03

samplemean<-mean (s.means)
samplevars<-var(s.means)

#Question 04
#Compare the population mean and mean of sample means.
popmn
samplemean

#Question 05
#compare Population varience and vae of sample means
truevar=popvar/5
samplevars


#Exercise--------------------------------------------------------------------------------------
#Question 1

# Set the working directory
setwd("D:\\Probability and Statistics Y2S1\\IT24102769 Lab 08 PS")

#import the dataset
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#calculate the population mean of laptop bag weights
popmn <- mean(Weight.kg.)

#calculate the population variance
popvar <- var(Weight.kg.)

popmn
popvar


#Question 2

#initialize empty containers for samples and sample names
samples <- c()
n <- c()

#loop to draw 25 samples of size 6 with replacement
for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)   # Sample of size 6
  samples <- cbind(samples, s)                 
  n <- c(n, paste("s", i))                     
}

#assign column names to the sample matrix
colnames(samples) <- n

#calculate sample means and variances for each sample
s.means <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)

s.means
s.vars

# Question 3:
#mean of the 25 sample means
samplesmean <- mean(s.means)

#variance of the 25 sample means
samplevars <- var(s.means)

#display population mean and mean of sample means
popmn
samplesmean

# n = 6 (sample size)
truevar <- popvar / 6

samplevars
truevar

