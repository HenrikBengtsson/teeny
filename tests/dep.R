print(commandArgs())
print(.libPaths())
str(as.list(Sys.getenv()))

library(teeny)
x <- hello()
print(x)
