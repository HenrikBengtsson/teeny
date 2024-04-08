library(mirai)

message("Reset")
mirai::daemons(0)
print(mirai::daemons())

message("Launch two workers")
mirai::daemons(2, dispatcher = FALSE)
print(mirai::daemons())

message("Reset")
mirai::daemons(0)
print(mirai::daemons())

Sys.sleep(5)


