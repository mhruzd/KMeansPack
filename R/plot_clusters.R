
# This plots the k-means clustering results 
#kmeans_result is a kmeans object 


#' Plot K-means clustering results
#'
#' This function visualizes K-means clusters.
#'
#' @param data A numeric matrix or data frame.
#' @param kmeans_result A kmeans object.
#' @return A ggplot object.
#' @export
plot_clusters <- function(data, kmeans_result) {
  library(ggplot2)
  
  if (!inherits(kmeans_result, "kmeans")) {
    stop("kmeans_result must be an object of class 'kmeans'.")
  }
  
  if (ncol(data) < 2) {
    stop("Data must have at least two numeric columns for plotting.")
  }
  
  plot_data <- as.data.frame(data)
  plot_data$cluster <- as.factor(kmeans_result$cluster)
  
  ggplot(plot_data, aes(x = V1, y = V2, color = cluster)) +
    geom_point(size = 3) +
    theme_minimal() +
    labs(title = "K-means Clustering", x = "Feature 1", y = "Feature 2")
}
