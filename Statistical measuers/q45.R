range_val <- range(iris$Sepal.Length)
range_val[2] - range_val[1]         
IQR(iris$Sepal.Length)              

mean_deviation <- function(x) {
  mean(abs(x - mean(x)))
}
mean_deviation(iris$Sepal.Length)

sd(iris$Sepal.Length)              
