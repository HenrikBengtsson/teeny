.onAttach <- function(libname, pkgname) {
   if (nzchar(Sys.getenv("R_CMD"))) return()
   stop(paste0("Package ", sQuote(pkgname), " must not be attached"))
}
