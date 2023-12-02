attach(Newcauseofdeath)

# Plot the graph
plot(`Death Rate`, `Age Adjusted Death Rate`,
     main='Age Adjusted death rate by death rate')

#Linear Model for the two variables 
causeofdeath2.lm <-lm(`Age Adjusted Death Rate`~`Death Rate`)

#Plot it on the Graph of the linear model.
abline(causeofdeath2.lm,col='red')

#Coefficient for model equation 
coef(causeofdeath2.lm)

#Histogram of the residual 
hist(resid(causeofdeath2.lm),breaks=40)

#PLot for the fitted value vs the residueal to check for Normal distribution 
plot(fitted.values(causeofdeath2.lm),resid(causeofdeath2.lm))
abline(h=0)

#Checking R-squared 
summary(causeofdeath2.lm)$r.squared
