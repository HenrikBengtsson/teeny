library(teeny)

value <- Sys.getenv("_R_CHECK_LENGTH_1_LOGIC2_")
message("_R_CHECK_LENGTH_1_LOGIC2_=", value)

## This will _not_ give an error if
##  _R_CHECK_LENGTH_1_LOGIC2_=package:_R_CHECK_PACKAGE_NAME_,abort,verbose
res <- tryCatch({
  c(TRUE, TRUE) && TRUE
}, error = function(e) e)
print(res)
stopifnot(getRversion() < "3.6.0" || inherits(res, "error") ||
          is.element(value, c("", "false", "warn")))

## This will _not_ give an error if
##  _R_CHECK_LENGTH_1_LOGIC2_=package:_R_CHECK_PACKAGE_NAME_,abort,verbose
res <- tryCatch({
  c(TRUE, FALSE) || TRUE
}, error = function(e) e)
print(res)
stopifnot(getRversion() < "3.6.0" || inherits(res, "error") ||
          is.element(value, c("", "false", "warn")))
