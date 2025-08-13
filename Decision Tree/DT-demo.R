library(caTools)
library(rpart)
library(rpart.plot)

data <- iris

View(data)

split <- sample.split(data,SplitRatio = 0.8)

train <- subset(data,split==TRUE)

test <- subset(data,split == FALSE)

View(test)

dtmodel = rpart(Species~.,train,
                method = 'class')

summary(dtmodel)

rpart.plot(dtmodel)
