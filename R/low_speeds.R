low_speeds <- function(limit) {
  ## NOT OK: Must be declared at top level of the package
  ## utils::globalVariables("speed")
  
  subset(datasets::cars, speed <= limit)
}

## OK, if NAMESPACE has importFrom(utils, globalVariables)
globalVariables("speed")

## OK
## utils::globalVariables("speed")

## NOT OK - argument must be a character string
## utils::globalVariables(speed)
