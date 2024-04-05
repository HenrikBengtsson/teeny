library(mirai)

message("Reset")
mirai::daemons(0)
print(mirai::daemons())


