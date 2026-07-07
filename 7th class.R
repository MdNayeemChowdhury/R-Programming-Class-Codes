
#creating data frame and editing
df<- data.frame()
fix(df)
df

#renameing column
library(reshape)
rename<- rename(df, c(id = "roll"))
rename
df

names(df)[3]<- "Roll"
df

#sorting in ascending order
df1<-df[order(df$Roll),]
df1
df1<-df[order(df$gender),]
df1
#descending order
df1<-df[order(-df$Roll),]
df1
#with multiple row
df1<-df[order(df$gender, -df$Roll),]
df1

#adding labels to levels
df<- data.frame( random = rbinom(3,size =1,prob = 0.5))
df
df$random<- factor(df$random, levels = c(0,1), labels = c("tail", "head"))
df

#droping a column
df1$name <- NULL
#droping multiple row
df1$name<- df1$Roll <- NULL
df1

#reshaping dataset

df2<- data.frame(
  id= c(1,2,3),
  var1= c(4,5,6),
  var2 = c(7,8,9)
)
df2

#aggregating
aggregate(var1 ~ id, data = df2, mean)


library(reshape)
#melting
melted<-melt(df2,id.vars = "id")
melted

# casting
cast(melted)

# using sql command in R
install.packages("sqldf")
library(sqldf)
sqldf("SELECT * FROM df1")
