library(teeny)

value <- Sys.getenv("_R_CHECK_LENGTH_1_CONDITION_")
message("_R_CHECK_LENGTH_1_CONDITION_=", value)
do_validate <- isTRUE(as.logical(value))
stopifnot(!nzchar(value) && !do_validate)

## This will give an error if _R_CHECK_LENGTH_1_CONDITION_=true
res <- tryCatch({
  if(c(TRUE, TRUE)) message("TRUE") else message("FALSE")
}, error = function(e) e)
print(res)
stopifnot(inherits(res, "error") || !do_validate)

## This will give an error if _R_CHECK_LENGTH_1_CONDITION_=true
res <- tryCatch({
  if(c(FALSE, TRUE)) message("TRUE") else message("FALSE")
}, error = function(e) e)
print(res)
stopifnot(inherits(res, "error") || !do_validate)

## This will give an error if _R_CHECK_LENGTH_1_CONDITION_=true
res <- tryCatch({
  sloppy_if(c(TRUE, TRUE))
}, error = function(e) e)
print(res)
stopifnot(inherits(res, "error") || !do_validate)

## This will give an error if _R_CHECK_LENGTH_1_CONDITION_=true
res <- tryCatch({
  sloppy_if(c(TRUE, FALSE))
}, error = function(e) e)
print(res)
stopifnot(inherits(res, "error") || !do_validate)
