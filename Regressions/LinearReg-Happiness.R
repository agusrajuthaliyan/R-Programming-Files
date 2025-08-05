library(ggplot2)
library(caTools)

heart <- read.csv("D:/RAJAGIRI/S3/BMAAR/R-Programs/Regressions/heart-data.csv")
income <- read.csv("D:/RAJAGIRI/S3/BMAAR/R-Programs/Regressions/income-data.csv")

View(heart)
View(income)

summary(heart)

str(heart)


# Split - Test data
split <-sample.split(income$happiness,SplitRatio = 0.8)

train <- subset(income,split==TRUE)
View(train)

test <- subset(income,split==FALSE)
View(test)

# modeling
model = lm(data = train,
   happiness~income)

summary(model)

# Model Evaluations

predictions <- predict(model, newdata = test)
actual <- test$happiness
rmse <- sqrt(mean((predictions - actual)^2))
print(paste("RMSE:", round(rmse, 3)))

# Prediction

new_value <- data.frame(income = 4.5)
predicted_happiness <- predict(model, newdata = new_value)
predicted_happiness

# Scatter Plot
ggplot(data=income,
       aes(x=income, y = happiness)) +geom_smooth() + geom_point()
