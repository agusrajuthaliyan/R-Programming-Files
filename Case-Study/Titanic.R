# --------------------------
# Load libraries
# --------------------------
library(caTools)
library(rpart)
library(rpart.plot)
library(caret)
library(randomForest)

# --------------------------
# Reading the data
# --------------------------
data <- read.csv("D:/RAJAGIRI/S3/BMAAR/R-Programs/Datasets/titanic_data.csv")

# --------------------------
# Data Preprocessing 
# --------------------------
data <- data[, c("survived","pclass","sex","age","sibsp","parch","fare","embarked")]

# Replacing missing values
data$age[is.na(data$age)] <- median(data$age, na.rm=TRUE)
data$embarked[is.na(data$embarked)] <- "S"

# Converting categorical values
data$survived <- as.factor(data$survived)
data$pclass   <- as.factor(data$pclass)
data$sex      <- as.factor(data$sex)
data$embarked <- as.factor(data$embarked)

# Ensuring numeric columns stay numeric
data$age  <- as.numeric(data$age)
data$fare <- as.numeric(data$fare)

set.seed(42)

# --------------------------
# Splitting the data
# --------------------------
split <- sample.split(data$survived, SplitRatio=0.8)
train <- subset(data, split == TRUE)
test  <- subset(data, split == FALSE)

# --------------------------
# Decision Tree Model
# --------------------------
dtmodel <- rpart(survived ~ ., data=train, method="class")
rpart.plot(dtmodel)

# Prediction on test data
pred_dt <- predict(dtmodel, test, type="class")

# Confusion Matrix
cat("\nDecision Tree Results:\n")
results_dt <- confusionMatrix(data=pred_dt, reference=test$survived)
print(results_dt)

# --------------------------
# Random Forest Model
# --------------------------
rfmodel <- randomForest(survived ~ ., data=train, ntree=500, mtry=3, importance=TRUE)

# Prediction on test data
pred_rf <- predict(rfmodel, test)

# Confusion Matrix
cat("\nRandom Forest Results:\n")
results_rf <- confusionMatrix(data=pred_rf, reference=test$survived)
print(results_rf)

# Variable Importance Plot
varImpPlot(rfmodel)
