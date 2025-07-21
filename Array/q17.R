v1 <- 1:16
v2 <- 17:32
arr <- array(c(v1, v2, v1, v2), dim = c(4, 4, 4))

result <- arr[, , 2] + arr[, , 4]
print(result)
