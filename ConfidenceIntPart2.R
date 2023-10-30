# Mean of the Death Rates 
xbar<- mean(Newcauseofdeath$`Death Rate`)

#Standard deviation of Death Rates 
s<- sd(Newcauseofdeath$`Death Rate`)

#Sample Size 
n<- length(Newcauseofdeath$`Death Rate`)

#Calculate the Z-interval
z<- -qnorm(0.05/2)

#Calculate the Lower & Upper bound in the z-interval
Lz<- xbar- z*s/sqrt(n)
Uz<- xbar+ z*s/sqrt(n)

#Print
cat("The Upper and Lower bounds of Z interval is [", Lz, ",", Uz, "]")

#Calculate the t- interval 
t<- -qt(0.025,n-1)

##Calculate the Lower & Upper bound in the t-interval
Lt<- xbar- t*s/sqrt(n)
Ut<- xbar+ t*s/sqrt(n)

cat("The Upper and Lower bounds of T interval is [", Lt, ",", Ut, "]")
