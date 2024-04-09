library(mirai)

message("Launch two workers")
mirai::daemons(2, url = local_url(), output = TRUE)
print(mirai::daemons())

message("Reset")
mirai::daemons(0)
print(mirai::daemons())

Sys.sleep(5)

message("Reset")
mirai::daemons(NULL)
print(mirai::daemons())

Sys.sleep(5)

message("Reset")
mirai::daemons(0)
print(mirai::daemons())

Sys.sleep(5)


