#Load Data
library(readr)
causeofdeath <- read_csv("~/Desktop/causeofdeath.csv")
View(causeofdeath)

#Check for missing values 
sum(is.na(causeofdeath$Deaths))
sum(is.na(causeofdeath$`Death Rate`))
sum(is.na(causeofdeath$`Age Adjusted Death Rate`))

#We need to clean the data 
causeofdeath <- na.omit(causeofdeath)

#We need to check columns for numeric
class(causeofdeath$Deaths)
class(causeofdeath$`Death Rate`)
class(causeofdeath$`Age Adjusted Death Rate`)

#Convert columns to numeric 
causeofdeath$`Age Adjusted Death Rate`<-as.numeric(causeofdeath$`Age Adjusted Death Rate`)
causeofdeath$`Death Rate`<- as.numeric(causeofdeath$`Death Rate`)
causeofdeath$Deaths<- as.numeric(causeofdeath$Deaths)

#Scatterplot
plot(causeofdeath$Deaths,causeofdeath$`Death Rate`)
plot(causeofdeath$`Death Rate`, causeofdeath$`Age Adjusted Death Rate`)

#Corrolation
cor(causeofdeath$Deaths, causeofdeath$`Death Rate`)
cor(causeofdeath$`Death Rate`, causeofdeath$`Age Adjusted Death Rate`)

