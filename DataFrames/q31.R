df1 <- data.frame(id=c(1,2), name=c("A","B"))
df2 <- data.frame(salary=c(1000,2000), dept=c("HR","IT"))
h_combined <- cbind(df1, df2)
v_combined <- rbind(df1, data.frame(id=3, name="C"))
print(h_combined)
print(v_combined)

