emp$new_col <- c("A", "B", "C", "D", "E")
emp <- rbind(emp, c(106, "Mary", 60000, "F"))
emp <- emp[-2, ]    # remove 2nd row
emp <- emp[ , -4]   # remove 4th column
print(emp)

