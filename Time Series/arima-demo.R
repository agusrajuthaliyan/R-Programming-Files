library(forecast)

data <- read.csv("D:/RAJAGIRI/S3/BMAAR/Datasets/TSLA.csv")

stdata <- ts(data$Close,frequency = 30)

model <-auto.arima(stdata)
summary(model)

forecast(model,5)
plot(forecast(model,5))