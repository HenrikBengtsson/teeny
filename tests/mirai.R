library(mirai)

message("Launch two workers")
mirai::daemons(2, output = TRUE)
print(mirai::daemons())

message("Main process:")
print(data.frame(pid = Sys.getpid(), pid_hex = sprintf("%x", Sys.getpid()), tempdir = basename(tempdir())))

message("Temporary directories for parallel workers:")
ms <- list()
for (kk in 1:10) {
  ms[[kk]] <- mirai({
    Sys.sleep(1)
    data.frame(pid = Sys.getpid(), pid_hex = sprintf("%x", Sys.getpid()), tempdir = basename(tempdir()))
  })
}
vs <- lapply(ms, FUN = function(m) call_mirai(m)$data)
vs <- do.call(rbind, vs)
vs <- unique(vs)
print(vs)



message("Reset")
mirai::daemons(0)
print(mirai::daemons())

Sys.sleep(5)

message("Reset")
mirai::daemons(NULL)
print(mirai::daemons())

Sys.sleep(5)

message("Reset")
mirai::daemons(0)
print(mirai::daemons())

Sys.sleep(5)


