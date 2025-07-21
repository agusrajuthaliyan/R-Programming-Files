library(tidyr)
whdata<-who
whdata
View(whdata)
whdata_demo<- whdata%%
  gather (key =code,
          value = cases,
          new_sp_m014:newrel_f65,
          na.rm=TRUE)