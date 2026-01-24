setwd("D:/R/dataset")
Heart_Disease_Prediction <- read.csv("Heart_Disease_Prediction.csv")

# show the number of rows and columns
dim(Heart_Disease_Prediction)

#show the number of rows
nrow(Heart_Disease_Prediction)

#show the number of columns
ncol(Heart_Disease_Prediction)

# show the column names
names(Heart_Disease_Prediction)

# show the first six rows
head(Heart_Disease_Prediction)

# show the last six rows
tail(Heart_Disease_Prediction)

# show the structure of the dataset
str(Heart_Disease_Prediction)

# show the summary statistics of the dataset
summary(Heart_Disease_Prediction)

# Check for missing values
colSums(is.na(Heart_Disease_Prediction))

# Ensure Age and Cholesterol are numeric
Heart_Disease_Prediction$Age <- as.numeric(Heart_Disease_Prediction$Age)
Heart_Disease_Prediction$Cholesterol <- as.numeric(Heart_Disease_Prediction$Cholesterol)

# Visualize the distribution of a key variable (e.g., age)
hist(Heart_Disease_Prediction$Age, 
main="Age Distribution",
 xlab="Age",
 col="blue",
 border="black"
 )

# Scatter plot of Age vs. Cholesterol
plot(Heart_Disease_Prediction$Age, Heart_Disease_Prediction$Cholesterol,
     main="Age vs Cholesterol",
     xlab="Age",
     ylab="Cholesterol",
     pch=19,
     col="red"
     )
