hello <- function() {
  msg <- "Hello world!"
  if (require("tools")) msg <- toTitleCase(msg)
  message(msg)
}
