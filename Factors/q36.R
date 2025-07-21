x <- factor(c("high", "low", "medium", "high", "high", "low", "medium"))
df_x <- data.frame(levels=levels(x), value=1:length(levels(x)))
print(df_x)
