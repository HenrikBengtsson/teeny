library(teeny)

value <- Sys.getenv("_R_CHECK_LENGTH_1_LOGIC2_")
message("_R_CHECK_LENGTH_1_LOGIC2_=", value)

## This will give an error if
##  _R_CHECK_LENGTH_1_LOGIC2_=package:_R_CHECK_PACKAGE_NAME_,abort,verbose
res <- tryCatch({
  sloppy_and(c(TRUE, TRUE), TRUE)
}, error = function(e) e)
print(res)
stopifnot(getRversion() < "3.6.0" || inherits(res, "error"))

## This will give an error if
##  _R_CHECK_LENGTH_1_LOGIC2_=package:_R_CHECK_PACKAGE_NAME_,abort,verbose
res <- tryCatch({
  sloppy_and(c(TRUE, FALSE), TRUE)
}, error = function(e) e)
print(res)
stopifnot(getRversion() < "3.6.0" || inherits(res, "error"))
