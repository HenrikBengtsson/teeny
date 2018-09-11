#' Say Hello to the World
#'
#' A function that says hello to the world.
#'
#' @param x An \R object
#'
#' @param \ldots Not used.
#'
#' @return Returns (invisibly) the object `x`.
#'
#' @example incl/hello.R
#'
## We need to explicitly export and add an alias for the S3 generic function
## that is created automatically by setMethodS3():
#' @aliases hello
#' @export hello
#'
#' @rdname hello
#' @export
setMethodS3("hello", "default", function(x = NULL, ...) {
  message("Hello world!")
  invisible(x)
})

#' @export
setMethodS3("hello", "character", function(x = NULL, ...) {
  message(x, ' says "Hello world!"')
  invisible(x)
})
