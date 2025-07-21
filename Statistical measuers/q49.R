sample_vals <- c(5, 1, 3, 9, 7, 1, 6, 11, 5, 1, 1, 3, 2, 1, 8)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(sample_vals)
table(sample_vals)
