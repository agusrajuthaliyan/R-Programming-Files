# Load libraries
library(ggplot2)
library(dplyr)
library(cluster)
library(factoextra)

# Load dataset
data <- read.csv("D:/RAJAGIRI/S3/BMAAR/Datasets/Mall_Customers.csv")

# --- Marketing Perspective Analysis (KPIs) ---

# Summary statistics
summary(data)

# Gender distribution
ggplot(data, aes(x = Gender, fill = Gender)) +
  geom_bar() +
  labs(title = "Customer Gender Distribution")

# Age distribution
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Customer Age Distribution")

# Income distribution
ggplot(data, aes(x = `Annual.Income..k..`)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") +
  labs(title = "Annual Income Distribution")

# Spending score distribution
ggplot(data, aes(x = Spending.Score..1.100.)) +
  geom_histogram(binwidth = 5, fill = "green", color = "black") +
  labs(title = "Spending Score Distribution")

# KPI Table (average by gender)
kpi_gender <- data %>%
  group_by(Gender) %>%
  summarise(Average_Age = mean(Age),
            Average_Income = mean(`Annual.Income..k..`),
            Average_SpendingScore = mean(Spending.Score..1.100.))
print(kpi_gender)

# --- Customer Segmentation with K-means ---

# Select features (income & spending score for clustering)
df <- data[, c("Annual.Income..k..", "Spending.Score..1.100.")]

# Elbow method to find optimal number of clusters
fviz_nbclust(df, kmeans, method = "wss") +
  labs(title = "Elbow Method for Optimal Clusters")

# Assuming user finds the optimal cluster number (say k = 5)
set.seed(123)
km <- kmeans(df, centers = 4, nstart = 25)

# Add cluster results to dataset
data$Cluster <- as.factor(km$cluster)

# Visualize clusters
fviz_cluster(km, data = df,
             palette = "jco",
             ggtheme = theme_minimal(),
             main = "Customer Segments (K-means Clustering)")

# Cluster profiles (marketing insight)
cluster_profiles <- data %>%
  group_by(Cluster) %>%
  summarise(Average_Age = mean(Age),
            Average_Income = mean(`Annual.Income..k..`),
            Average_SpendingScore = mean(Spending.Score..1.100.),
            Count = n())
print(cluster_profiles)
