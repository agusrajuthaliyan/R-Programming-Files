sepal_range <- function(x) {
  return(max(x) - min(x))
}
sepal_range(iris$Sepal.Length)
