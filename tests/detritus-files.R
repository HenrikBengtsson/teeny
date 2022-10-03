## Create two parallel workers
cl <- parallel::makePSOCKcluster(2L)

## Say hello
message("Hello world!")

## If we leave the following out, we will get an 'R CMD check' NOTE
## on detritus in the temp directory, where the files have names of
## format Rscript<hexcode>, when running on MS Windows (only)
if (!grepl("tests", Sys.getenv("R_SKIP_STOPCLUSTER"))) {
  parallel::stopCluster(cl)
}

