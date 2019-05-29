library(teeny)

library(future)
plan(multiprocess, workers = 2L)

res <- hello_xml()
print(res)
