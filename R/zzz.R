api <- list(
  exclude = c("hello")
)

library <- function(..., exclude = NULL) {
  exclude <- c(exclude, api$exclude)
  exclude <- c(exclude, "library")
  base::library(.packageName, character.only = TRUE, exclude = exclude, ...)
}

.onLoad <- function(libname, pkgname) {
  message(".onLoad() ...")

  message(".packageName=", .packageName)
  ## The package namespace is already locked here
  ns <- getNamespace(.packageName)
  print(ns)
  message("Package namespace is locked: ", environmentIsLocked(ns))
  message("Package namespace exports:")
  print(getNamespaceExports(ns))
  
  message(".onLoad() ... done")
}

.onAttach <- function(libname, pkgname) {
  message(".onAttach() ...")

  message(".packageName=", .packageName)
  ## The package namespace is already locked here
  ns <- getNamespace(.packageName)
  print(ns)
  message("Package namespace is locked: ", environmentIsLocked(ns))
  message("Package namespace exports:")
  print(getNamespaceExports(ns))

  message("Parent 'env':")
  penv <- parent.frame()
  env <- penv$env
  print(utils::ls.str(envir = env))

  message(".onAttach() ... done")
}
