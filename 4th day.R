

#importing data set into R
#from CSV format
#1st way
df1<-read.csv("C:\\Users\\Nayeem\\Downloads\\MOCK_DATA.csv")
df1
#to check current working directory
getwd()
#to set a new working directory
setwd("C:/Users/Nayeem/Downloads")
getwd()
#2nd way
df2<-read.csv("MOCK_DATA.csv")
df2
#3rd way
df3<-read.table("MOCK_DATA.csv", sep = ",")

setwd("C:\\Users\\Nayeem\\Downloads\\R\\Mock_Data")
#how to import excel file into R
#1st way
install.packages("readxl")
library(readxl)
df4<-read_excel("MOCK_DATA.xlsx")
#2nd way
install.packages("openxlsx")
library(openxlsx)
read.xlsx("MOCK_DATA.xlsx")


#spss file importing
#1stt way
library(foreign)
read.spss("depress.sav")
#2nd way
install.packages("haven")
library(haven)
read_spss("depress.sav")





#how to  create function
#with one parameter
square<- function(a){
  x<-a**2
  return(x)
}
square(3)

#with multiple parameter
sum_new<- function(a,b){
  a+b
}
sum_new(2,3)

#to set a default 
sum_new<- function(a = 5, b){
  a+b
}
sum_new(2,3)
sum_new(,3)

new<- function(a,b){
  a^b
}
new(2,3)

#constructor function
make_power<- function(n){
  pow<-function(x){
    x^n
  }
  pow
}
cube<-make_power(3)
cube(2)

#to know all current object
ls()

