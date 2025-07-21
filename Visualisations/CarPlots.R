data <- read.csv("D:/RAJAGIRI/S3/BMAAR/Programs/Visualisations/car.csv")
View(data)

h <-data$city_mpg
g <- data$highway_mpg

#histogram

hist(h, xlab = "City MPG", col = "orange", border = "black",
     main = "Histogram of City MPG") # Added a main title
hist(g, xlab = "Highway MPG", col = "blue", border = "white",
     main = "Histogram of Highway MPG")

# Line plot
plot(h, type = "l", col = "black",
     xlab = "Car Index", ylab = "City MPG",
     main = "Line Plot of City MPG (by Car Index)")

# Scatter plot
plot(h, g, col = "violet", xlab = "City Mileage",
     ylab = "Highway Mileage", main = "Scatter Plot: City vs. Highway MPG")

# Line Plot
line(h)


# 1. Box Plot: To see the distribution and outliers

boxplot(h, main = "Box Plot of City MPG", ylab = "City MPG", col = "lightgreen")


boxplot(g, main = "Box Plot of Highway MPG", ylab = "Highway MPG", col = "lightblue")

# You can also compare them side-by-side

boxplot(h, g,
        names = c("City MPG", "Highway MPG"),
        main = "Box Plots of City and Highway MPG",
        ylab = "MPG",
        col = c("lightgreen", "lightblue"))

# 2. Density Plot: Smoothed version of a histogram
# Requires the 'density' function

plot(density(h), main = "Density Plot of City MPG",
     xlab = "City MPG", col = "red", lwd = 2) # lwd for line width
polygon(density(h), col = rgb(1, 0, 0, 0.2)) # Fill the area under the curve


plot(density(g), main = "Density Plot of Highway MPG",
     xlab = "Highway MPG", col = "darkblue", lwd = 2)
polygon(density(g), col = rgb(0, 0, 1, 0.2))

# 3. Bar Plot (if you had categorical data, e.g., count of cars by manufacturer)
# Let's create a dummy 'manufacturer' column for demonstration
data$manufacturer <- sample(c("Toyota", "Honda", "Ford", "BMW"), nrow(data), replace = TRUE)
manufacturer_counts <- table(data$manufacturer)


barplot(manufacturer_counts,
        main = "Number of Cars by Manufacturer",
        xlab = "Manufacturer",
        ylab = "Count",
        col = rainbow(length(manufacturer_counts))) # Use rainbow colors

# 4. Adding a regression line to the scatter plot
# Let's replot the scatter plot and add a line

plot(h, g, col = "violet", xlab = "City Mileage",
     ylab = "Highway Mileage", main = "Scatter Plot with Regression Line")
abline(lm(g ~ h), col = "red", lwd = 2) # Add a linear regression line


library("ggplot2")
ggplot(data=data,aes(x=price))+geom_histogram(fill='darkorchid3',col='darkorange',bins=30)

ggplot(data=data,aes(x=price,fill=fuel_type))+geom_histogram()

ggplot(data=data,aes(x=price,fill=body_style))+geom_histogram()

ggplot(data =data,
       aes(x = city_mpg,
           y = price, fill = fuel_type))+ geom_col


ggplt(data=data,
      aes(x = body_style,
          y = price,
          fill = fuel_type)) + geom_col()

ggplot(data=data,
       aes(x=length,
           y = width)) + geom_line()
