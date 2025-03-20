test_that("parallelly::availableCores()", {
  cores <- parallelly::availableCores(which = "all")
  print(cores)
  ncores <- parallelly::availableCores()
  print(ncores)
  expect_true(ncores <= 2)
})
