tmp_root <- dirname(tempdir())
tmp_before <- dir(tmp_root, full.names = FALSE)
parent <- data.frame(name = "parent", pid = Sys.getpid(), tempdir = basename(tempdir()))

cl <- parallel::makeCluster(1L)

res <- parallel::clusterEvalQ(cl, {
  cl <- parallel::makeCluster(1L)
  on.exit({
    parallel::stopCluster(cl)
    Sys.sleep(as.numeric(Sys.getenv("SLEEP_GRANDCHILD", "0")))
  })

  child <- data.frame(name = "child", pid = Sys.getpid(), tempdir = basename(tempdir()))

  grandchild <- parallel::clusterEvalQ(cl, {
    data.frame(name = "grandchild", pid = Sys.getpid(), tempdir = basename(tempdir()))
  })[[1]]

  rbind(child, grandchild)
})[[1]]

parallel::stopCluster(cl)
Sys.sleep(as.numeric(Sys.getenv("SLEEP_CHILD", "0")))

res <- rbind(parent, res)

message("Added temporary files and folders:")
tmp_after <- dir(tmp_root, full.names = FALSE)
tmp_diff <- setdiff(tmp_after, tmp_before)
print(tmp_diff)

message("Detritus temporary files:")
res$pid_hex <- sprintf("%x", res$pid)
res$detritus <- NA_character_
for (kk in 1:nrow(res)) {
  pattern <- sprintf("^Rscript%s", res$pid_hex[kk])
  match <- grep(pattern, basename(tmp_diff), value = TRUE)
  if (length(match) > 0) res$detritus[kk] <- match
}
print(res)