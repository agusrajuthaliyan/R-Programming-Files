mean(iris$Sepal.Length)
median(iris$Sepal.Length)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(iris$Sepal.Length)
