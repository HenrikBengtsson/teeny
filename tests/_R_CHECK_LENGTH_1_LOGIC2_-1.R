library(teeny)

value <- Sys.getenv("_R_CHECK_LENGTH_1_LOGIC2_")
message("_R_CHECK_LENGTH_1_LOGIC2_=", value)

## This will _not_ give an error if
##  _R_CHECK_LENGTH_1_LOGIC2_=package:_R_CHECK_PACKAGE_NAME_,abort,verbose
res <- tryCatch({
  c(TRUE, TRUE) && TRUE
}, error = function(e) e)
print(res)
stopifnot(inherits(res, "error") ||
          value == "package:_R_CHECK_PACKAGE_NAME_,abort,verbose")

## This will _not_ give an error if
##  _R_CHECK_LENGTH_1_LOGIC2_=package:_R_CHECK_PACKAGE_NAME_,abort,verbose
res <- tryCatch({
  c(TRUE, FALSE) || TRUE
}, error = function(e) e)
print(res)
stopifnot(inherits(res, "error") ||
          value == "package:_R_CHECK_PACKAGE_NAME_,abort,verbose")
