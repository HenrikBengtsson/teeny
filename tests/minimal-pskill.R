a <- 42
message("a=", a)
cl <- parallel::makeCluster(1L, type="FORK")
try(parallel::clusterEvalQ(cl, tools::pskill(Sys.getpid()) ))
message("parallel:::isChild()=", parallel:::isChild())
message("a=", a)
rm(a)
