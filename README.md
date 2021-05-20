<!-- badges: start -->
[![R build status](https://github.com/HenrikBengtsson/teeny/workflows/R-CMD-check/badge.svg)](https://github.com/HenrikBengtsson/teeny/actions)

[![Travis CI Build Status](https://travis-ci.org/HenrikBengtsson/teeny.svg?branch=master)](https://travis-ci.org/HenrikBengtsson/teeny/branches)

[![AppVeyor CI Build Status](https://ci.appveyor.com/api/projects/status/github/HenrikBengtsson/teeny?branch=master&svg=true)](https://ci.appveyor.com/project/HenrikBengtsson/teeny)

[![codecov](https://codecov.io/gh/HenrikBengtsson/teeny/branch/master/graph/badge.svg)](https://codecov.io/gh/HenrikBengtsson/teeny/branches)
<!-- badges: end -->


# R package: teeny - A Minimal, Valid, Complete R Package


## Branch 'pipe-in-package-source'

What happens if we use the new R 4.1.0 `|>` operator in package code, build the package tarball using R (>= 4.1.0), and then attempt to install the package in R (< 4.1.0)?  Let's try with:

```r
hello <- function() {
  "Hello world!" |> message()
}
```

Build the package tarball using R 4.1.0:

```sh
$ R CMD build teeny 
* checking for file ‘teeny/DESCRIPTION’ ... OK
* preparing ‘teeny’:
* checking DESCRIPTION meta-information ... OK
* checking for LF line-endings in source and make files and shell scripts
* checking for empty or unneeded directories
Removed empty directory ‘teeny/tests’
* building ‘teeny_0.1.0.tar.gz’
```

Testing to install with R 4.0.4:

```sh
$ R CMD INSTALL teeny_0.1.0.tar.gz 
* installing to library ‘/home/hb/R/x86_64-pc-linux-gnu-library/4.0-CBI/_bioc-3.12’
* installing *source* package ‘teeny’ ...
** using staged installation
** R
Error in parse(outFile) : 
  /tmp/hb/RtmpMWoHp3/R.INSTALLdd63c178f46/teeny/R/hello.R:2:19: unexpected '>'
1: hello <- function() {
2:   "Hello world!" |>
                     ^
ERROR: unable to collate and parse R files for package ‘teeny’
* removing ‘/home/hb/R/x86_64-pc-linux-gnu-library/4.0-CBI/_bioc-3.12/teeny’
```


Interestingly, you can actually build this package tarball using R (< 4.1.0) and it will still work when used in R (>= 4.1.0).  I've verified that I can do `R CMD build` in R 3.2.5 and then `R CMD INSTALL` in R 4.1.0.



## Branches

Here are some example of branches available in this Git repository (see `git branch -a` or GitHub for all of them):

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
