#Load Data
library(readr)
causeofdeath <- read_csv("~/Desktop/causeofdeath.csv")
View(causeofdeath)

#Scatterplot
plot(causeofdeath$Deaths,causeofdeath$`Death Rate`)
plot(causeofdeath$`Death Rate`, causeofdeath$`Age Adjusted Death Rate`)

#Corrolation
cor(causeofdeath$Deaths, causeofdeath$`Death Rate`)
cor(causeofdeath$`Death Rate`, causeofdeath$`Age Adjusted Death Rate`)

