library(mlbench)
library(dplyr)
library(caTools)
library(ggplot2)

data("PimaIndiansDiabetes2", package = "mlbench")
data<-PimaIndiansDiabetes2
View(data)

# Viewing Na values
is.na(data)

# Removing rows with na values
cleaned_data <- na.omit(data)
View(cleaned_data)

# splitting data into train and split
split <- sample.split(cleaned_data,SplitRatio = 0.8)

train <- subset(cleaned_data,split == TRUE)
View(train)

test <- subset(cleaned_data, split == FALSE)
View(test)

# Labeling cat to binaryand visualising the log Reg
train %>%
  mutate(prob = ifelse(diabetes == "pos",1,0)) %>%
  ggplot(aes(glucose,prob)) +
  geom_smooth(method = "glm",method.args = list(family="binomial")) + 
  geom_point()

# Model building

model <- glm(data=train,
             diabetes ~ glucose,
             family = binomial)

summary(model)
