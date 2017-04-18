#' @export
test <- function(woof){
  print(woof)
}

fetch_trips <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/trips")
  r <- GET(uri)
  e = content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}
