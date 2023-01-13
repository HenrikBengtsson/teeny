library(teeny)

message("Trying to download a file")
tf <- tempfile()
res <- utils::download.file("https://www.r-project.org/index.html", destfile = tf)
message("Status: ", res)
message("Downloaded file size: ", file.size(tf))


