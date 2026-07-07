#Basic R coding
#1st day live class
#[Date: 02-02-2023]
#Md. Nayeem Chowdhury
#ISRT, DU

#How to input
x <- 2
3 -> y
z = 4

#How to output
x
print(y) #Use of print()

#data type
x<-3
class(x)
x<- "Nayeem"    #used "" or '' for character data type
class(x)
x<- 2.33
class(x)
x<- TRUE
class(x)
x<- complex(real = 2,imaginary = 3)
class(x)

#Changing data types
x<- 3
as.logical(x)
as.character(x)
as.numeric(x)

#To check data by logical value
is.numeric(x)
is.character(x)

#how to input in vector
a<- c(2,3,4,5)
#vector deserve one data type only.otherwise it will convert it in one type.
x<- c("a", 2)
class(x)
x<- c(TRUE, 2)
class(x)
a[4] #positional value in vector

#how to input data in matrix
m<-1:10 #sequence value in vector
x<- matrix(m, nrow = 2,byrow = FALSE)
x
y<- matrix(m, ncol = 5)

dim(x) #To check row,column number
ncol(x) #To know the column number only
nrow(x) #To know the row number only

x[1,2] # positional value in matrix

#Use of cbind(), rbind()
x<-1:3
y<-5:7
cbind(x,y) #for column bind
rbind(x,y) #for row bind

#list creating
lst<- list(1,"a", TRUE)
lst
#Creating an empty list
b<-vector(mode = "list",length = 03)
b

#arithmatic operation for all object
x<-c(2,3,4) 
y<-c(5,6,7)
x+y
x-y
x*y
x/y
x**y #to calculate power using **
x^y #to calculate power using ^

#some basic graph
x<-1:3
plot(x)
hist(x)
pie(x)
