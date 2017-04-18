#' @export
test <- function(woof){
  print(woof)
}

trips <-function(uri){
  r <- GET(uri)
  e = content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}
