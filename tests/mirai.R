library(mirai)

tmp_root <- dirname(tempdir())
message("tmp_root", tmp_root)
tmp_before <- dir(tmp_root, full.names = FALSE)

message("Launch two workers")
mirai::daemons(2, output = TRUE)
str(mirai::daemons())

main <- data.frame(name = "main", pid = Sys.getpid(), tempdir = basename(tempdir()))
ms <- list()
for (kk in 1:10) {
  ms[[kk]] <- mirai({
    Sys.sleep(1)
    data.frame(name = "worker", pid = Sys.getpid(), tempdir = basename(tempdir()))
  })
}
workers <- lapply(ms, FUN = function(m) call_mirai(m)$data)
workers <- do.call(rbind, workers)
workers <- unique(workers)

message("Added temporary files and folders:")
tmp_after <- dir(tmp_root, full.names = FALSE)
tmp_diff <- setdiff(tmp_after, tmp_before)
print(tmp_diff)

res <- rbind(main, workers)
res$pid_hex <- sprintf("%x", res$pid)
res$detritus <- NA_character_
for (kk in 1:nrow(res)) {
  pattern <- sprintf("^Rscript%s", res$pid_hex[kk])
  match <- grep(pattern, basename(tmp_diff), value = TRUE)
  if (length(match) > 0) res$detritus[kk] <- match
}
message("Detritus information:")
print(res)

message("Reset")
mirai::daemons(NULL)
str(mirai::daemons())

message("Added temporary files and folders (+5s):")
tmp_after <- dir(tmp_root, full.names = FALSE)
tmp_diff <- setdiff(tmp_after, tmp_before)
print(tmp_diff)
stopifnot(length(tmp_diff) == 0)

