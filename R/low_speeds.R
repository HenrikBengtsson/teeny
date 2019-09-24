low_speeds <- function(limit) {
  ## NOT OK: Must be declared at top level of the package
  ## utils::globalVariables("speed")
  
  subset(datasets::cars, speed <= limit)
}

## GOOD
utils::globalVariables("speed")

## OK
## But, ideally, we should have the following NAMESPACE declaration:
##   importFrom(utils, globalVariables)
## Surprisingly, 'R CMD check' does not complain about 'globalVariables'
## being unknown, even though we normally need to declare all imports.
## globalVariables("speed")

## NOT OK - argument must be a character string
## utils::globalVariables(speed)
