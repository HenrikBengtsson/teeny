hello <- function() {
  foreach(x = 1:3) %dopar% {
    ## To please 'R CMD check'
    x <- x
    
    sqrt(x)
  }
}

