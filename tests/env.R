env <- Sys.getenv()
env <- env[grepl("^R_", names(env))]
str(as.list(env))

env <- Sys.getenv()
env <- env[grepl("^_R_", names(env))]
str(as.list(env))

print(.libPaths())

if (.Platform$OS.type == "unix") {
  if (nzchar(Sys.which("pstree"))) {
    res <- system2("pstree", args = c("--arguments", "--long",
                   "--show-parents", Sys.getpid()), stdout = TRUE)
    cat(res, sep="\n")
  }
}

Sys.sleep(as.numeric(Sys.getenv("R_CHECK_SLEEP", "0")))



