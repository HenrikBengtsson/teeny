cl <- parallel::makePSOCKcluster(1, setup_timeout = 15.0)
print(cl)
parallel::stopCluster(cl)
