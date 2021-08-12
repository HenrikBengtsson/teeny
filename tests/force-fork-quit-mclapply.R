library(parallel)

pid <- Sys.getpid()
message("pid: ", pid)

if (exists("mcparallel", mode="function", envir=getNamespace("parallel"))) {
  cl <- makeCluster(1L, type = "FORK")

  ## Emulate R worker crash
  res <- tryCatch(mclapply(cl, X=1L, fun = function(x) {
    quit(save = "no")
  }), error = identity)
  stopifnot(inherits(res, "error"))
}

message("Timestamp: ", format(Sys.time(), "%Y-%m-%d %H:%M:%OS6"))
message("Sys.getpid(): ", Sys.getpid())
message("pid: ", pid)

## Cleanup
rm(pid)
