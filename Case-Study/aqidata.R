mydata <- airquality

# View(airquality)
View(mydata)

# view the NaN values
is.na(mydata$Ozone)

# Removing the NaN values
mydata<-na.omit(mydata)
View(mydata)

# Replace with mean
mydata$Ozone <- ifelse(is.na(mydata$Ozone),mean(mydata$Ozone,na.rm = TRUE),mydata$Ozone)
View(mydata)

mean(mydata$Ozone)

# Replace with mean
mydata$Solar.R <- ifelse(is.na(mydata$Solar.R),mean(mydata$Solar.R,na.rm = TRUE),mydata$Solar.R)
View(mydata)

# Create a column 

mydata$danger <- ifelse(mydata$Solar.R>100,TRUE,FALSE)
View(mydata)

# Create a Month name col
mydata$Month <- factor(mydata$Month,level = c(5,6,7,8,9),
                       labels = c("May","June","July","August","September"))
View(mydata)

# Scaling the Solar Variable

mydata$Solar.R <- scale(mydata$Solar.R)
View(mydata)


# Data Spliting

install.packages("caTools")
library(caTools)

set.seed(42)
split <- sample.split(mydata,SplitRatio = 0.8)
View(split)

train<-subset(mydata,split==TRUE)
View(train)

test<-subset(mydata,split==FALSE)
View(test)


