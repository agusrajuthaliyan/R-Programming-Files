library(mlbench)
library(dplyr)
library(caTools)
library(ggplot2)

data <- read.csv("D:/RAJAGIRI/S3/BMAAR/Datasets/loandata.csv")
View(data)

# Viewing Na values
is.na(data)

# splitting data into train and split
split <- sample.split(data,SplitRatio = 0.8)

train <- subset(data,split == TRUE)

test <- subset(data, split == FALSE)

# Model building

## Binary Logistic Regression

bin_model <- glm(data=train,
                 loan_status~annual_inc,
                 family = binomial)
summary(bin_model)

# Multiple logistic Regression

mlt_model <- glm(data=train,
                 loan_status~annual_inc+age+loan_amnt,
                 family = binomial)

summary(mlt_model)
