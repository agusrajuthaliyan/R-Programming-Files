mat <- matrix(1:9, nrow = 3, ncol = 3)
new_row <- c(10, 11, 12)
mat <- rbind(mat, new_row)
new_col <- c(13, 14, 15, 16)
mat <- cbind(mat, new_col)
mat <- mat[-2, ]
mat <- mat[, -3]
print(mat)
