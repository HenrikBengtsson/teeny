a <- 42
message("a=", a)
cl <- parallel::makeCluster(1L, type="FORK")
try(parallel::clusterEvalQ(cl, parallel:::mcexit(0L)))
message("parallel:::isChild()=", parallel:::isChild())
message("a=", a)
rm(a)
