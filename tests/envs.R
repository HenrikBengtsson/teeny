message("_R_CHECK_nnn_ environment variables:")

envs <- Sys.getenv()
envs <- envs[grepl("^_R_CHECK_", names(envs))]
print(envs)
