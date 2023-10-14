#Calculating Measures of center of Deaths
mean(causeofdeath$Deaths)
mean(causeofdeath$Deaths, trim=0.2)
median(causeofdeath$Deaths)

#Calculating measures of spread of Deaths
sd(causeofdeath$Deaths)
var(causeofdeath$Deaths)

#Calculating Measures of Center of Death rate
mean(causeofdeath$`Death Rate`)
mean(causeofdeath$`Death Rate`, trim=0.1)
median(causeofdeath$`Death Rate`)

#Calculating measures of spread of Death rate 
sd(causeofdeath$`Death Rate`)
var(causeofdeath$`Death Rate`)
