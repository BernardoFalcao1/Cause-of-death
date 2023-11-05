# Plot the graph
plot(Newcauseofdeath$Deaths, Newcauseofdeath$`Death Rate`,
     ylab="Death Rate",
     xlab="Deaths",
     main="Death Rates according to Death ")

#Linear Model for the two variables 
causeofdeath.lm<- lm(Newcauseofdeath$`Death Rate`~Newcauseofdeath$Deaths , data = Newcauseofdeath)

#Plot it on the Graph 
abline(causeofdeath.lm, col="red")

#Coefficient for model equation 
coef(causeofdeath.lm)

#Checking R-squared 
summary(causeofdeath.lm)$r.squared

#Histogram of the residual 
hist(resid(causeofdeath.lm),breaks = 40)

#PLot for the fitted value vs the residueal to check for Normal distribution 
plot(fitted.values(causeofdeath.lm),resid(causeofdeath.lm))
abline(h=0)
