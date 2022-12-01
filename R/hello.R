#' Debug information
#'
#' @return Returns nothing.
#'
#' @examples
#' debug()
#'
#' ## This gives an error if _R_CHECK_SUGGESTS_ONLY_=true
#' library(listenv)
#'
#' @importFrom utils installed.packages
#' @export
debug <- function() {
  message("_R_CHECK_nnn_ environment variables:")
  envs <- Sys.getenv()
  envs <- envs[grepl("^_R_CHECK_", names(envs))]
  print(envs)

  message("Package libraries:")
  libs <- .libPaths()
  print(libs)
  for (lib in libs) {
    cat(sprintf("Library path: %s\n", lib))
    print(dir(path = lib, all.files = TRUE, full.names = TRUE))
  }

  message("Installed packages:")
  pkgs <- installed.packages()
  pkgs <- as.data.frame(pkgs)
  rownames(pkgs) <- NULL
  print(pkgs[, c("Package", "Version", "LibPath")])
}



