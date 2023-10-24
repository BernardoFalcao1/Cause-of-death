# Convert "." to NA in the "Deaths" column
causeofdeath$Deaths[causeofdeath$Deaths == "."] <- NA

# Convert the "Death Rate" column to numeric 
causeofdeath$Deaths <- as.numeric(as.character(causeofdeath$Deaths))

#Store the median death in variable 
median.death<-median(causeofdeath$Deaths,na.rm=T) 

#Replace NA with the median
causeofdeath$Deaths[is.na(causeofdeath$Deaths)] <- median.death

#Histogram for Deaths
hist(as.numeric(causeofdeath$Deaths),
     main = "Number of Deaths", 
     xlab="Number of deaths",
     ylab="Number of occurences",
     breaks=100,
     col="blue")

# Convert "." to NA in the "Death Rate" column
causeofdeath$`Death Rate`[causeofdeath$`Death Rate` == "."] <- NA

# Convert the "Death Rate" column to numeric 
causeofdeath$`Death Rate` <- as.numeric(as.character(causeofdeath$`Death Rate`))

# Calculate the median
median.deathRate <- median(causeofdeath$`Death Rate`, na.rm = TRUE)

# Replace NA values with the median
causeofdeath$`Death Rate`[is.na(causeofdeath$`Death Rate`)] <- median.deathRate

#Histogram For Death Rate
hist(as.numeric(causeofdeath$`Death Rate`),
     main="Death rate",
     xlab= "Death rate",
     breaks=50,
     col="red")

# Convert "." to NA in the "Death Rate" column
causeofdeath$`Death Rate`[causeofdeath$`Death Rate` == "."] <- NA

# Convert non-numeric values to NA in the "Age Adjusted Death Rate" column
causeofdeath$`Age Adjusted Death Rate` <- as.numeric(as.character(causeofdeath$`Age Adjusted Death Rate`))

# Calculate the median for 'Age Adjusted Death Rate'
median_age_adjusted <- median(causeofdeath$`Age Adjusted Death Rate`, na.rm = TRUE)

# Replace NA values in 'Age Adjusted Death Rate' with the median
causeofdeath$`Age Adjusted Death Rate`[is.na(causeofdeath$`Age Adjusted Death Rate`)] <- median_age_adjusted

#Histogram Age Adjusted Death Rate
hist(causeofdeath$`Age Adjusted Death Rate`,
     main="Age of Death rate",
     xlab="Age adjusted Death rate",
     breaks=100,
     col="purple")
