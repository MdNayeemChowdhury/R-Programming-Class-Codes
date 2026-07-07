
#to read build in dataset
data(mtcars)
mtcars$mpg

#2nd way
attach(mtcars)
mpg
detach()


#creating  a data frame

result_data<- data.frame(
  "id" = 1:5,
  "Name" = c("a", "b", "c", "d", NA),
  "mark" = rnorm(5, mean = 50, sd = 9),
  "gender" = c("m", "m", "f", "m", "f")
)
result_data
#to know internal structure
str(result_data)
#to know the summary
summary(result_data)
#to check the row names
row.names(result_data)
#to set or rename row names
row.names(result_data)<- c("s1", "s2", "s3", "s4", "s5")

#to check null value
is.na(result_data)

#to drop null value
df<-na.omit(result_data)

#to select values
df[,2]
df[, "Name"]
df$Name
#select 2 rows
df[c(1,2), ]

#row selecting with condition
df[which(df$gender == "f"), ]
#2nd way
attach(df)
df[which(gender == "f"), ]
detach(df)
#wselecting with more condition
attach(df)
df[which( gender == "m" & id=="2"),]
detach()
#another way
subset(df, gender == "m" & id=="2", select = c(Name, mark) )

#making a new data frame from a older data frame
df1<- data.frame(
  df$Name,
  df$mark
)
df1

#to rename column name
install.packages("reshape")
library(reshape)
df1 <- rename(df1, c(df.Name = "Name", df.mark = "Mark"))
df1
#rounding the mark column data
round(df1$Mark)

#to add new column
#1st way
df1$Rounded_Mark <- round(df1$Mark)

#2nd way
df1<- transform(df1,
                Rounded_Mark_New = round(Mark))

#3rd way
attach(df1)
Rounded_Mark_New_2<- round(Mark)
detach(df1)
df1
