#' @importFrom utils head
#' @importFrom tools R_user_dir
#' @export
hello <- function() {
  tracer <- quote(.Platform <- list(OS.type = "windows"))
  trace(tools::R_user_dir, tracer = tracer)
  on.exit(untrace(tools::R_user_dir))
  print(head(deparse(body(tools::R_user_dir@.Data))))
  tools::R_user_dir("R.cache", which = "cache")
}


