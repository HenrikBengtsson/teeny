context("parallelly")

test_that("makeClusterPSOCK(1) works", {  
  cl <- parallelly::makeClusterPSOCK(1)
  print(cl)
  parallel::stopCluster(cl)
})

test_that("makeClusterPSOCK(2) works", {  
  cl <- parallelly::makeClusterPSOCK(2)
  print(cl)
  parallel::stopCluster(cl)
})
