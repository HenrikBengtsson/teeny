message("Package libraries:")

libs <- .libPaths()
print(libs)

for (lib in libs) {
  cat(sprintf("Library path: %s\n", lib))
  print(dir(path = lib, all.files = TRUE, full.names = TRUE))
}
