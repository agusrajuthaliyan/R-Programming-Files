library(caTools)
library(ggplot2)


data <- read.csv("D:/RAJAGIRI/S3/BMAAR/R-Programs/Machine Learning/study.csv")

View(data)

split <- sample.split(data,SplitRatio = 0.7)
train_data <- subset(data,split = TRUE)
View(train_data)
test_data <- subset(data,split = FALSE)