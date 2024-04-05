library(mirai)

message("Reset")
mirai::daemons(0)
print(mirai::daemons())

message("Launch two workers")
mirai::daemons(2)
print(mirai::daemons())

message("Reset")
mirai::daemons(0)
print(mirai::daemons())

Sys.sleep(5)


