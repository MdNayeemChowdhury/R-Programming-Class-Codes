
#8th class

#lapply()
x<- list(a= 1:5, b= 5:10)
x$a
mean(x$a)
mean(x$b)
lapply(x, mean)

#sapply()
#modifed version of lapply()
sapply(x, mean)

#split()
#data frame
x<-data.frame(
  Name= c("a", "b", "c", "d"),
  Roll= c(1,3,2, 1)
)
split(x, x$Roll)

#vector
x<-c(1:10)
split(x, 1:5)

#tapply()
# split() + sapply()
tapply(x, rep(1:5,2), mean)

#apply()
m<- matrix(1:20, nrow = 5)

mean(m[1,])
#row wise
apply(m, MARGIN = 1, mean)
rowMeans(m)
rowSums(m)
#column wise
apply(m, MARGIN = 2, mean)
colMeans(m)
apply(m, MARGIN = 2, sum)
colSums(m)

#passing parameter value
apply(FUN = sum, X = m, MARGIN = 1)

#mapply()
mapply(FUN =  rep, 1:4, c(1,2,3,4))


#to understand a clear concept
m<- function(n, mean, sd){
  rnorm(n, mean, sd)
}
m(1:5, 1, 2)
mapply(m, 1:5, 1, 2)
