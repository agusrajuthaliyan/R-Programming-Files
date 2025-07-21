local_data <- read.csv("Datasets/iris.csv", header = FALSE)

head(local_data)
summary(local_data)

colnames(local_data) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")


mean(local_data$Sepal.Length, na.rm = TRUE)
median(local_data$Sepal.Length, na.rm = TRUE)

sd(local_data$Sepal.Length, na.rm = TRUE)

