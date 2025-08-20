library(factoextra)

data <- iris
View(data)

# slicing and removing the categorical var. species
iris_data <- data[, -5]

# finding the optimal no. of clusters using 3 methods
fviz_nbclust(iris_data, kmeans, method = "wss")
fviz_nbclust(iris_data, kmeans, method = "silhouette")
fviz_nbclust(iris_data, kmeans, method = "gap_stat")

# Perform k-means clustering with 3 clusters (since we know iris has 3 species)
set.seed(123)  
kmeans_result <- kmeans(iris_data, centers = 4, nstart = 25)

# Print the result
print(kmeans_result)

# Compare clustering result with actual species
table(iris$Species, kmeans_result$cluster)


# Visualising using fviz cluster
fviz_cluster(kmeans_result, data = iris_data,
             geom = "point", ellipse.type = "convex",
             palette = "jco", ggtheme = theme_minimal())



