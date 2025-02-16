
# Data has to be in a matrix or data frame
# centers is the number of clusters
# nstart is the number of initial random sets 
# result returns the plot for the result 


#' Perform K-means clustering
#'
#' This function applies K-means clustering to a dataset.
#'
#' @param data A numeric matrix or data frame.
#' @param centers The number of clusters.
#' @param nstart Number of initial random sets.
#' @return A kmeans object.
#' @export
kmeans_clustering <- function(data, centers = 3, nstart = 10) {
  if (!is.numeric(data) && !is.matrix(data) && !is.data.frame(data)) {
    stop("Input data must be a numeric matrix or data frame.")
  }
  
  result <- kmeans(data, centers = centers, nstart = nstart)  
  return(result)
}


