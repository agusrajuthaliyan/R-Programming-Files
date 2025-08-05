library(ggplot2)
library(caTools)

heart <- read.csv("D:/RAJAGIRI/S3/BMAAR/R-Programs/Regressions/heart-data.csv")

View(heart)

summary(heart)

str(heart)

# Split - Test data
split <-sample.split(heart,SplitRatio = 0.8)

train <- subset(heart,split==TRUE)
View(train)

test <- subset(heart,split==FALSE)
View(test)

# modeling
model = lm(data = train,
           heart.disease~biking+smoking)

summary(model)

# Model Evaluations

predictions <- predict(model, newdata = test)
actual <- test$heart.disease
rmse <- sqrt(mean((predictions - actual)^2))
print(paste("RMSE:", round(rmse, 3)))

# Scatter Plot
ggplot(data=heart,
       aes(x=biking, y = heart.disease)) +geom_smooth() + geom_point()
