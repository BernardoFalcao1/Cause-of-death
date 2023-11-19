# I want to know if the in 2010 there was greater mean of deaths than the other years 
# H0: m = m(2010)
#H1: m < m(2010)

# Subsetting data for the year 2010
subset_2010 <- subset(Newcauseofdeath, Year == 2010)

# Performing one-sample t-test comparing to the overall mean
result <- t.test(subset_2010$Deaths, mu = mean(Newcauseofdeath$Deaths), alternative = "greater")

# Print the result
print(result)



# I want to know if the in 2019 there was greater mean of death rate than the other years 
# H0: m = m(2019)
#H1: m < m(2019)

# Subsetting data for the year 2019
subset_2019 <- subset(Newcauseofdeath, Year == 2019)

# Checking the results
result2 <- t.test(subset_2019$`Death Rate`, mu = mean(Newcauseofdeath$`Death Rate`), alternative = "greater")

# Print the result
print(result2)
