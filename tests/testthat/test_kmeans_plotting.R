
# test for plotting 

library(testthat)

library(ggplot2)

test_that("plot_clusters produces a ggplot chart", {
  set.seed(123)
  data <- matrix(rnorm(100), ncol = 2)
  result <- kmeans_clustering(data, centers = 3)
  
  plot <- plot_clusters(data, result)
  expect_s3_class(plot, "ggplot")  # Fixing error - Use expect_s3_class() instead of expect_is()
})


