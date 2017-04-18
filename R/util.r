# after every new function, do $ devtools::document() to expose function

#' @export
test <- function(woof){
  print(woof)
}

#' @export
fetch_trips <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/trips", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results  # parse json
  f = as.data.frame(do.call(rbind, e))
  f
}
