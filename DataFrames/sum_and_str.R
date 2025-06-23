id<-c(1:7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female","female","male","male","female","male")
smoking<-c("no","yes","no","yes","yes","no","yes")
tumour<-c("small","large","medium","large","medium","large","small")

df <- data.frame(id,weight, gender,smoking,tumour)

print(df)

str(df)

summary(df)