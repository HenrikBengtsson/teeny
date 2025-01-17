counter <- local({
  count <- 0L
  function() {
    count <<- count + 1L
    count
  }
})
