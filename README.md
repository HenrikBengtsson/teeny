[![Travis CI Build Status](https://travis-ci.org/HenrikBengtsson/teeny.svg?branch=master)](https://travis-ci.org/HenrikBengtsson/teeny/branches)
[![AppVeyor CI Build Status](https://ci.appveyor.com/api/projects/status/github/HenrikBengtsson/teeny?branch=master&svg=true)](https://ci.appveyor.com/project/HenrikBengtsson/teeny)
[![codecov](https://codecov.io/gh/HenrikBengtsson/teeny/branch/master/graph/badge.svg)](https://codecov.io/gh/HenrikBengtsson/teeny/branches)


# R package: teeny - A Minimal, Valid, Complete R Package


## Branches

* [master](https://github.com/HenrikBengtsson/teeny): The minimal baseline package
* [globalVariables](https://github.com/HenrikBengtsson/teeny/tree/globalVariables): Minimal package showing how and not how to use `utils::globalVariables()`
* [tests](https://github.com/HenrikBengtsson/teeny/tree/tests): Minimal package with package tests
* [vignettes/Sweave](https://github.com/HenrikBengtsson/teeny/tree/vignettes/Sweave): Minimal package with an Sweave-based vignette (requires LaTeX)
* [vignettes/Sweave-broken](https://github.com/HenrikBengtsson/teeny/tree/vignettes/Sweave-broken): Minimal package with an Sweave-based vignette causing `R CMD build` to produce `* creating vignettes ... ERROR`.
* [debugging/debugme](https://github.com/HenrikBengtsson/teeny/tree/debugging/debugme): Minimal package with near-zero overhead, string-based `"!DEBUG ..."` declarations based on the **[debugme]** package.
* [future/doFuture](https://github.com/HenrikBengtsson/teeny/tree/future/doFuture): Minimal package that uses **[doFuture]** as a parallel backend with **[foreach]**.  It illustrates how to handle `R CMD check` warnings on false-positive globals.
* [magrittr](https://github.com/HenrikBengtsson/teeny/tree/magrittr): Minimal package that uses the **[magrittr]** pipe operator `%>%`.
* [roxygen2/R.oo](https://github.com/HenrikBengtsson/teeny/tree/roxygen2/R.oo): Minimal package that uses **[roxygen2]** to document methods created by **[R.methodsS3]** and **[R.oo]**.

[debugme]: https://cran.r-project.org/package=debugme
[doFuture]: https://cran.r-project.org/package=doFuture
[foreach]: https://cran.r-project.org/package=foreach
[magrittr]: https://cran.r-project.org/package=magrittr
[roxygen2]: https://cran.r-project.org/package=roxygen2
[R.methodsS3]: https://cran.r-project.org/package=R.methodsS3
[R.oo]: https://cran.r-project.org/package=R.oo


