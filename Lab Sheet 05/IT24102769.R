setwd("C:\\Users\\User\\Desktop\\lab5")
Delivery_time <- read.table("Exercise - Lab 05.txt",header = TRUE,sep = ",")
fix(Delivery_time)

attach(Delivery_time)

histogram <- hist(Delivery_Time_.minutes.,
                  main= "Histogram for Number of Delivery times in  minutes",
                  breaks = seq(20,70,length = 10), right = TRUE)
#The distribution of delivery times appears to be roughly bell-shaped, suggesting a normal or approximately symmetric distribution. The peak frequency occurs around 40 minutes, with the frequency decreasing fairly evenly on both sides, indicating that most delivery times cluster around the mean with fewer occurrences at the extremes (20 and 70 minutes).

#Draw a cumulative frequency polygon (ogive) for the data in a separate plot.
cum_freq <- cumsum(histogram$counts)

plot(histogram$breaks[-1], cum_freq, type = "l",
     main = "Frequency Polygon (Ogive) for Delivery Times", 
     xlab = "Delivery Time in minutes", ylab = "Frequency", 
     xlim = c(20, 70), ylim = c(0, max(cum_freq)))


points(histogram$breaks[-1], cum_freq, pch = 16)

#Adding starting point(0,0)
points(20, 0, pch = 16)
lines(c(20, histogram$breaks[1]), c(0, 0), type = "l")

