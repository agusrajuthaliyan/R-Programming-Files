library(arules)
library(arulesViz)

tr <- read.transactions("D:/RAJAGIRI/S3/BMAAR/R-Programs/Datasets/aprioridata.csv",format = "basket",sep = ",")
inspect(tr)

str(tr)

set.seed(42)

asso_rules = apriori(data = tr,
                     parameter = list(support = 0.04,
                                      confidence = 0.2))

# plotting

inspect(sort(asso_rules, by = "lift")[1:2])

plot(asso_rules,
     method = "graph",
     measure = "confidence",
     shading = "lift")



