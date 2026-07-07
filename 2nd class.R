# 2nd Class
# Date[05-02-2023]

#Creating factor
x<-factor(x = c("m", "f", "m", "m", "f", "a"))
table(x) #making a frequency table

#Creating data frame
y<- c(1,2)
x<- c("male", "female")
data.frame(x,y)

#Assigning Name to
#Vector:
z<- c(10,11)
names(z)<- c("ten", "eleven")
names(z) #to check name of the vector elements

#Matrix
x<- matrix(1:4, nrow = 2,byrow = TRUE)
dim(x) #To know row and column number
dimnames(x)<- list(c("a", "b"), c("c", "d"))

x<- matrix(c(3:6), nrow = 2)
ncol(x) #To know only row number
nrow(x) #To know only column number
colnames(x)<- c("p", "q") #assigning column name
colnames(x) #check the column names
rownames(x)<- c("s", "t") #assigning row name

#List
p<- list("m"= 1, "n"= 2)

#Data frame
x<- c("m", "f")
y<- c(1,2)
a<-data.frame(x,y)
row.names(a) <- c("mn", "pq") #assigning row name
names(a)<- c("gender", "serial") ##assigning column name
a

#Positional/ Subsetting 
#vector
x<- 10:100
x[22] #22th value 
x[c(55,45,70)] #specific position
x[55:65] 

#Matrix
a<-matrix(1:100, nrow = 10)
a[1,10] # to know (1,10) positional value
a[ ,1] #to know all values of column 1
a[1:10] #R uses the 1st argument as row number(by default)

#List
x<- list(a= 1:4, b= 9)
x[[1]]
x[["a"]]
x$a # "$" declars the column name of x list 

#exercise
x<- list(a=list(10,11,12), b= c(1,2))
x$a[3] #as a vector
x[[c(1,3)]] # as a matrix
x[[1]] [[3]] # as a list


