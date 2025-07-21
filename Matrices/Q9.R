vec <- as.numeric(unlist(strsplit(readline(prompt = "Enter numbers separated by space: "), " ")))
rows <- as.integer(readline(prompt = "Enter number of rows: "))
cols <- length(vec) / rows
mat <- matrix(vec, nrow = rows, ncol = cols)
rownames(mat) <- paste0("Row", 1:rows)
colnames(mat) <- paste0("Col", 1:cols)
rint(mat)
