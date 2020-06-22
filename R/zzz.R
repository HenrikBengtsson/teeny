.onAttach <- function(libname, pkgname) {
   if (nzchar(Sys.getenv("R_CMD"))) return()
   stop("Package ", sQuote(pkgname), " must not be attached")
}
