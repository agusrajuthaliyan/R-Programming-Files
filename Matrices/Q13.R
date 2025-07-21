v1 <- as.numeric(unlist(strsplit(readline(prompt = "Enter first vector elements separated by space: "), " ")))
v2 <- as.numeric(unlist(strsplit(readline(prompt = "Enter second vector elements separated by space: "), " ")))
arr <- array(c(v1, v2), dim = c(3, 3, 2))
print(arr)
