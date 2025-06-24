months <- factor(c('Jan','Feb','Aug',
                   'Nov','July','Dec',
                   'Dec','Feb'),
                 levels<-c('Jan','Feb','March',
                           'April','May','June',
                           'July','Aug','Sept',
                           'Oct','Nov','Dec'))
levels(months)
table(months)