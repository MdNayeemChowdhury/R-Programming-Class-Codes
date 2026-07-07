
# Simulation

#to fixed random dataset
set.seed(024)
#r is use as a prefix of a dist to generate random number
x<-rbinom(n = 10, size = 2, prob = 0.5)
x
#d is used to determine density
dbinom(x = x, 2, prob = 0.5)

#p is used for cumulative dist
pbinom(q = 1, size = 2,prob = 0.5)

#q is used for quintile
qbinom(p = 0, size = 2, prob = 0.5)
qbinom(p = 0.5, size = 2, prob = 0.5)
qbinom(p = 1, size = 2, prob = 0.5)

#sampling(SRS)
sample(x, 5)

#practice with visualization
y<-rnorm(100)
hist(y)

z<-dnorm(y)
plot(y, z)

a<-pnorm(y)
plot(y, a)
#followed as z table
qnorm(0.975)

#Basic statistical work
mean(y)
median(y)
sum(y)
min(y)
max(y)
#standardize
scale(y)

#normal 5 Number Summary of dataset
summary(x)

#statistical summary
#install.packages("pastecs")
library(pastecs)
stat.desc(x)

#write a code for calculating MODE for a dataset