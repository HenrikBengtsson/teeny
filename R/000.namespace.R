## Create a dummy R_user_dir() for R (< 4.0.0)
## to please R CMD check
if (getRversion() < 4) {
  R_user_dir <- function(...) NULL
}  
