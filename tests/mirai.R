library(mirai)

message("Launch two workers")
mirai::daemons(2, output = TRUE)
print(mirai::daemons())

message("Temporary directory for main process: ", tempdir())

message("Temporary directories for parallel workers:")
ms <- list()
for (kk in 1:10) {
  ms[[kk]] <- mirai({ Sys.sleep(1); tempdir() })
}
vs <- vapply(ms, FUN = function(m) call_mirai(m)$data, FUN.VALUE = NA_character_)
print(table(vs))



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


