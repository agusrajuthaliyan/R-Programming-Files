multi_sd_var <- function(data, vars){
  sapply(data[vars], function(x) c(SD = sd(x), VAR = var(x)))
}
multi_sd_var(iris, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"))
