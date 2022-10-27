message("Installed packages:")
pkgs <- utils::installed.packages()
pkgs <- as.data.frame(pkgs)
rownames(pkgs) <- NULL
print(pkgs[, c("Package", "Version", "LibPath")])

