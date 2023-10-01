#We need to clean the data 
causeofdeath <- na.omit(causeofdeath)

#We need to check columns for numeric
class(causeofdeath$Deaths)
class(causeofdeath$`Death Rate`)
class(causeofdeath$`Age Adjusted Death Rate`)

#Convert columns to numeric 
causeofdeath$`Age Adjusted Death Rate`<-as.numeric(causeofdeath$`Age Adjusted Death Rate`)

#Histogram of "Deaths", "Death Rate", and "Age Adjusted Death Rate" 
hist(causeofdeath$Deaths,
     main = "Number of Deaths", 
     xlab="Number of deaths",
     ylab="Number of occurences",
     breaks=100,
     col="blue")

hist(causeofdeath$`Death Rate`,
     main="Death rate",
     xlab= "Death rate",
     breaks=50,
     col="red")

hist(causeofdeath$`Age Adjusted Death Rate`,
     main="Age of Death rate",
     xlab="Age adjusted Death rate",
     breaks=100,
     col="purple")
