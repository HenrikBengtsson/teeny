#' Test a Condition
#'
#' @param cond (logical)
#'
#' @return Returns TRUE if `cond` is TRUE, otherwise FALSE.
#'
#' @example tests/_R_CHECK_LENGTH_1_CONDITION_.R
#'
#' @export
sloppy_if <- function(cond) {
  if (cond) TRUE else FALSE
}
