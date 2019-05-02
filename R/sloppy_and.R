#' Test a Condition
#'
#' @param a,b (logical)
#'
#' @return Returns TRUE if `a && b` is TRUE, otherwise FALSE.
#'
#' @example tests/_R_CHECK_LENGTH_1_LOGIC2_-1.R
#' @example tests/_R_CHECK_LENGTH_1_LOGIC2_-2.R
#'
#' @export
sloppy_and <- function(a, b) {
  a && b
}
