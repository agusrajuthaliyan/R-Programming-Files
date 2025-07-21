# Installing Tidyverse Package
install.packages("tidyverse")

# Importing all the libraries
library(tidyr)
library(dplyr)

# Viewing the data
data <- who
View(data) #V is case-sensitive

#data transformation

selected <- select(data,-country,-iso2,-iso3,-year)
selected
  
df_gathered <- gather(data, key = "column_name", value = "value")