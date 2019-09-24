library(teeny)

x <- 1:10
y_truth <- as.list(x)
y1 <- foreach_it(x)
stopifnot(identical(y1, y_truth))

doFuture::registerDoFuture()
future::plan("sequential")
y2 <- foreach_it(x)
stopifnot(identical(y2, y_truth))

doFuture::registerDoFuture()
future::plan("multisession")
y2 <- foreach_it(x)
stopifnot(identical(y2, y_truth))
