library(teeny)

if (.Platform$OS.type != "windows") Sys.setenv(LOCALAPPDATA = "WORKS:")

if (getRversion() >= "4.0.0") {
  path <- local({
    tracer <- quote(.Platform <- list(OS.type = "windows"))
    trace(tools::R_user_dir, tracer = tracer)
    on.exit(untrace(tools::R_user_dir))
    print(head(deparse(body(tools::R_user_dir@.Data))))
    tools::R_user_dir("R.cache", which = "cache")
  })
  
  print(path)
}


