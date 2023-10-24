
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

cause_counts<- table(causeofdeath$`Leading Cause`)
barplot(cause_counts, 
        main = "Leading Causes of Death",
        xlab = "Leading Cause",
        ylab = "Count",
        col = "skyblue",
        names.arg = names(cause_counts),  # Specify labels/names
        las = 2 )

        
