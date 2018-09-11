#' A Person
#'
#' Create a Person
#'
#' @param name The name of the person.
#'
#' @param \ldots (optional) Additional named elements.
#'
#' @return Returns an [R.oo::Object] of class Person.
#'
#' @example incl/Person.R
#'
#' @export
setConstructorS3("Person", function(name = "Alice", ...) {
  extend(Object(), "Person", name = name, ...)
})

#' @export
setMethodS3("hello", "Person", function(x, ...) {
  message(x$name, ' says "Hello world!"')
  invisible(x)
})
