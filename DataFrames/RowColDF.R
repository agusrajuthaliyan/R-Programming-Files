id <- c(101:105)
name <- c('Mat','Soman','Daisy','Kunju','Dong Lee')
sal <- c(16000,12000,67000,50000,34000)

df <- data.frame(id,name,sal)
new_df <- data.frame(id = 106,name='Sudhi',sal=70000)

df <- rbind(df,new_df)
print(df)

df$age <- c(20,27,24,30,28,29)
print(df)