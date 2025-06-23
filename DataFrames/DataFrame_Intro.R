id <- c(10:14)

gender <- c('M','F','M','F','M')
name <- c('Max','Lily','Lewis','Fiona','Ricciardo')
marks <- c(48,20,18,50,48)

data <- data.frame(id,
                   name,
                   gender,
                   marks)

print(data)
str(data)
summary(data)

rec <- data.frame(id=17,name='Shibu',
                  gender='M',
                  marks=41)

data <- rbind(data,rec)
print(data)