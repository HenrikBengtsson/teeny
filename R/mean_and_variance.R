#' Calculate the Mean and Variance
#'
#' @param x A numeric vector.
#'
#' @return
#' A named numeric vector of length two
#' with elements `mean` and `variance`.
#'
#' @importFrom stats var
#' @export
mean_and_variance <- function(x) {
  mu <- mean(x)
  sigma2 <- var(x)
  c(mean = mu, variance = sigma2)
}


