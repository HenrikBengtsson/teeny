hello <- function() {
  "!DEBUG hello() ..."
  "!DEBUG  A random number in [0,100]: `sample.int(100L, size = 1L)`"
  
  message("Hello world!")
  
  "!DEBUG hello() ... OK"

  ## Avoid returning that last 'debugme' string
  invisible()
}
