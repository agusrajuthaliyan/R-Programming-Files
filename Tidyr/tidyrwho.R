library(tidyr)
mydata<-who
mydata
View(mydata)
who1 <- pivot_longer(who, cols = 5:ncol(who), names_to = "key", values_to = "cases", values_drop_na = TRUE)
who2 <- separate(who1, key, into = c("new", "type", "sexage"), sep = "_")
who3 <- separate(who2, sexage, into = c("sex", "age"), sep = 1)
View(who3)
