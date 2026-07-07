#day: 03

#Creatig vector with missing value
x<- c(1,2,NaN, 7)
mean(x) #No mathematical operation will be hold for NA value

#Removing NA value
y<-is.na(x) #checking where NA is
is.nan(x) #checking where NaN is
z<-x[!y] #(!) for not operation

#another way of removing NA
y<-complete.cases(x) #checking where value is present
z[y] 

#mathematical operation removing NA
mean(x, na.rm = TRUE)

#Trim mean calculation
mean(z, trim = .6)

#Creating a matrix with NA value
x<- rep(c(1,2,NA,4), 4)
m<-matrix(x, nrow = 4)
m

#Removing NA values
y<- complete.cases(m)
m[y,]

#another way
y<-is.na(m)
matrix(m[!y],3)

#Some useful function
seq_along(c(10,11)) #making a index(sequence) from the data given
rep(2,3) #repeatation
length(c(1,1,1,1,1,1,1,1)) #length checking
seq(1,20,2) #creating a sequence with a distance

#internal structure
str(vector)
str(matrix)

#working directory
getwd() #to know the current wd
setwd("C:\\Users\\Nayeem\\OneDrive\\Documents\\R Coding") #to set a new wd

#Creating a function
sqr<-function(x){
  return (x**2)
}
sqr(3)