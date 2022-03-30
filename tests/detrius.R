cl <- parallel::makeCluster(1)

dummy <- parallel::clusterEvalQ(cl, {
  cl <- parallel::makeCluster(1)
  on.exit(parallel::stopCluster(cl))
  parallel::clusterEvalQ(cl, Sys.getpid())
})
print(dummy)

parallel::stopCluster(cl)
