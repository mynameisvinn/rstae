#' @export
test1 <- function(woof){
  print(woof)
}

#' @export
fetch_trips <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/trips", sep="")
  r <- GET(uri)
  e = content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}
