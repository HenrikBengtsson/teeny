## This is needed because for packages that are listed under 'Depends:'
## we need to import functions either via NAMESPACE specification (as
## below), or by using them via <pkg>::<fcn> calls.
## If not done, then 'R CMD check' will complain about this.
## Note: We technically only need to import one function, but lets be
## good citizens and explicitly list everything that is actually used.
#' @importFrom R.methodsS3 setGenericS3 setMethodS3
#' @importFrom R.oo setConstructorS3 extend Object
NULL
