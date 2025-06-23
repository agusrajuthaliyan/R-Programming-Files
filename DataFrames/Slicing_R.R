id <- c(101:105)
name <- c('Mat','Soman','Daisy','Kunju','Dong Lee')
sal <- c(16000,12000,67000,50000,34000)

df <- data.frame(id,name,sal)

print(df[3,1])
print(df[5,3])