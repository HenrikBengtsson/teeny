cl <- parallel::makeCluster(1L)

res <- parallel::clusterEvalQ(cl, {
  cl <- parallel::makeCluster(1L)
  on.exit(parallel::stopCluster(cl))
  c(
    pid_worker = Sys.getpid(),
    pid_child = parallel::clusterEvalQ(cl, Sys.getpid())
  )
})

pids <- c(pid_main = Sys.getpid(), unlist(res))
print(pids)

pids_hex <- sapply(pids, FUN = sprintf, fmt = "%x")
print(pids_hex)

parallel::stopCluster(cl)
