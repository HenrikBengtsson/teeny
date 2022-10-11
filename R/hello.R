#' Displays A Message
#'
#' A function that says hello to the world.
#'
#' @param test If TRUE, globals are queried.
#'
#' @return
#' Returns nothing.
#'
#' @examples
#' hello()
#'
#' @export
hello <- function(test = FALSE) {
  if (test) {
    "# decorate: false-globals=s"
    x <- s
    
    "# decorate: false-globals=t"
    y <- t
  }
  
  message("Hello world!")
}
