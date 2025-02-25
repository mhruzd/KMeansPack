# Clustering test

library(testthat)

test_that("kmeans_clustering works properly", {
  set.seed(123)
  data <- matrix(rnorm(100), ncol = 2)
  result <- kmeans_clustering(data, centers = 3)
  
  expect_s3_class(result, "kmeans")  # Fix: Use expect_s3_class() instead of expect_is()
  expect_equal(nrow(result$centers), 3)  # Fixing error - Use nrow() instead of length()
  })
