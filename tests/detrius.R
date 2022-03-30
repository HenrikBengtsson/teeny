message("Temporary files in before:")
tmp_root <- dirname(tempdir())
tmp_before <- dir(tmp_root, full.names = TRUE)
print(tmp_before)

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

message("Temporary files after:")
tmp_after <- dir(tmp_root, full.names = TRUE)
print(tmp_after)

message("Added temporary files and folders:")
tmp_diff <- setdiff(tmp_after, tmp_before)
print(tmp_diff)

message("Detrious temporary files:")
detrius <- grep("^Rscript", basename(tmp_diff), value = TRUE)
print(detrius)
for (name in names(pids)) {
  match <- grep(sprintf("^Rscript%x", pids[name]), detrius, value = TRUE)
  if (length(match) > 0) {
    message(sprintf("%s left detrius temporary file %s", sQuote(name), paste(match, collapse = ", ")))
  }
}
