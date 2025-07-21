library(ggplot2)

x<-c(15,20,25,80)
y<-c("Wagon R","Alto","Swift","Dzire")
pie(x,y,main="pie chart Demo")
pie(x,y,col=rainbow(length(x)),radius=0.8,main="Pie chart",clockwise = TRUE)
legend("bottomright",y,fill=rainbow(length(x)),cex=0.8)

#BAR CHART

barplot(x,names.arg = y,
        border='red',col='blue',
        main='Car Sales in Units',
        xlab='Car Type',
        ylab='Sales in units')

data<-read.csv("D:/RAJAGIRI/S3/BMAAR/Programs/Visualisations/car.csv")
View(data)
h<-data$city_mpg
g<-data$highway_mpg

#HISTOGRAM

hist(h,breaks = 10,xlab = "City MPG",main = "City Mileage Distribution",
     col = "blue",
     border = "red",
     xlim = c(0, 50),
     ylim = c(0, 50))

#SCATTER

plot(h,type="l",col='green')
plot(h,g,col='red',xlab="city Mileage",ylab="Highway Mpg")

#LINES

lines(g,type='l',col='red')

#BOXPLOT

boxplot(data$price~data$body_style,data=data,col="blue",xlab='body style',
          ylab='price',main='Mileage Data')

ggplot(data=data,aes(x=price))+geom_histogram(fill='darkorchid3',col='darkorange',bins=30)

ggplot(data=data,aes(x=price,fill=fuel_type))+geom_histogram()

ggplot(data=data,aes(x=price,fill=body_style))+geom_histogram()

#barplot univariate analysis categorical

ggplot(data=data,aes(x=body_style,fill=fuel_type)) +geom_bar()
ggplot(data=data,aes(x=body_style))+geom_bar(fill='blue',col='red')

#Stacked Chart
ggplot(data=data,aes(x=body_style,fill=fuel_type))+geom_bar(position='dodge')


#barplot bivariate analysis categorical/ontinuous
ggplot(data=data,aes(x=city_mpg,y=price,fill=fuel_type))+geom_col()
ggplot(data=data,aes(x=body_style,y=price,fill=fuel_type))+geom_col()

#using geo_bar
ggplot(data=data,aes(x=city_mpg,y=price,fill=fuel_type))+geom_bar(stat='identity')
ggplot(data=data,aes(x=city_mpg,y=price,fill=fuel_type))+geom_bar(position='dodge',stat='identity')

#scatter plot bivariate continuous
ggplot(data=data,aes(x=price,y=engine_size))+geom_point()
ggplot(data=data,aes(x=price,y=engine_size))+geom_point(col='red')
ggplot(data=data,aes(x=price,y=engine_size,col=num_of_cylinders))+geom_point()
ggplot(data=data,aes(x=city_mpg,y=horsepower,col=num_of_doors))+geom_point(size=5)

#lineplot continous values

ggplot(data = data,
       aes(x=length,y = width)) + geom_line()
ggplot(data = data,
       aes(x=length,y = width)) + geom_line(col="red")
ggplot(data = data,
       aes(x=length,y = width, col = fuel_type)) + geom_line()
ggplot(data = data,
       aes(x=city_mpg,y = highway_mpg)) + geom_line()
ggplot(data = data,
       aes(x=city_mpg,y = highway_mpg,col = num_of_doors)) + geom_line()

ggplot(data = data,
       aes(x=price,y = engine_size)) + geom_point() + geom_smooth()

# Linear Regression Plot

ggplot(data = data,
       aes(x=engine_size,y = price )) + 
  geom_point() + geom_smooth(method = lm, se = FALSE)

# Boxplots

ggplot(data = data,
       aes(x=price,y=body_style)) + geom_boxplot()
ggplot(data = data,
       aes(x=price,y=body_style)) + geom_boxplot(fill="green")
ggplot(data = data,
       aes(x=price,y=body_style, fill = aspiration)) + geom_boxplot()

ggplot(data = data,
       aes(x=peak_rpm ,y=fuel_type, fill = aspiration)) + geom_boxplot()


# Area plot

ggplot(data=data,
       aes(x=price)) + geom_area()

ggplot(data=data,aes(x=price))+geom_area(stat="bin")
ggplot(data=data,aes(x=price))+geom_area(stat="bin",fill = "green",col = "blue")
ggplot(data=data,aes(x=price, fill = body_style))+geom_area(stat="bin")
ggplot(data=data,aes(x=price, fill = fuel_system))+geom_area(stat="bin")

