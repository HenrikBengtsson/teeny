a <- 42
message("a=", a)
cl <- parallel::makeCluster(1L, type="FORK")
try(parallel::clusterEvalQ(cl, quit(save="no")))
message("parallel:::isChild()=", parallel:::isChild())
message("a=", a)
rm(a)
