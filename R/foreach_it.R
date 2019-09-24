#' Iterate over a Vector using Foreach
#'
#' @param X A vector of length N
#'
#' @return A vector of length N
#'
#' @importFrom foreach foreach %dopar%
#' @export
foreach_it <- function(X) {
  ## To please R CMD check
  x <- NULL; rm(list = "x")
  
  foreach(x = X) %dopar% {
    a_local_function(x)
  }
}

a_local_function <- function(x) identity(x)
