\name{hello}
\alias{hello}

\title{Displays A Message}

\description{
A function that says hello to the world.
}

\usage{
hello()
}

\value{Returns nothing.}

\examples{
## Create two parallel workers
cl <- parallel::makePSOCKcluster(2L)

## Say hello
hello()

## If we leave the following out, we will get an 'R CMD check' NOTE
## on detritus in the temp directory, where the files have names of
## format Rscript<hexcode>, when running on MS Windows (only)
if (as.logical(Sys.getenv("R_PARALLEL_STOPCLUSTER", "false"))) {
  parallel::stopCluster(cl)
}
}


