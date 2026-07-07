
#visualization
#example
x<- c(1,2,3,2,1)
plot(x, type = "b")

#data
age<- c(1,3,5,2)
weight<- c(4, 6, 8,3)
y<- 1:10
#what is plot?
#plot
plot(age, weight)

#linear regression line
abline(lm(weight ~ age))



#making a pdf of the graph
pdf("graph.pdf")
attach(mtcars)
mtcars
plot(wt, mpg)
title("plotting")
detach(mtcars)
dev.off()



#to make a page 4 part
par(mfrow = c(2,2))
#basic
plot(age)
hist(age)
boxplot(age) #boxplot
pie(age) #pie chart
#to normalize the page
par(mfrow = c(1,1))

#histogram
x<- rbinom(10, 2,0.5)
hist(x)
hist(y, freq = FALSE, ylim = c(0,0.6), xlim = c(0,12))

#plot

plot(y)
plot(y, type = "l")
plot(y, type= "o")

plot(y, type = "l", col = "blue", xlab = "number", ylab = "y number", main = "multiple plotiing")
lines(10:1, type = "l", col= "red")
legend("topleft", legend = c("red line", "blue line"), col = c("red", "blue"), fill = c("red","blue") )


#scatter plot
plot(y)

#barplot
barplot(y,col= "blue")
y

#pie chart
pie(y)
x<-c(1,2,3)
pie(x, col= c("red", "blue", "green"))

#3D pie chart
#install.packages("plotrix")
library(plotrix)
pie3D(x, labels= list("red", "blue", "green"),explode =0.1 )

#comparing pie chart
s<- c(10, 13, 14)
l<- c("US", "UK", "BAN" )
pie(s)
fan.plot(s, labels = l)
