# Hierarchical Clustering

# Importing the Mall customers data
dataset = read.csv('Mall_Customers.csv')
X = dataset[4:5]

# using the Dendrogram to find the optimal number of clusters
dendrogram = hclust(d = dist(X, method = 'euclidean'), method = 'ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = 'Customers',
     ylab = 'Euclidean Distance')

# Fitting hierarchical Clustering to the mall dataset
hc = hclust(dist(X, method = 'euclidean'), method = 'ward.D')
y_hc = cutree(hc, 5)

# Visualising cluster result
library(cluster)
clusplot(dataset,
         y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Annual Income',
         ylab = 'Spending Score')