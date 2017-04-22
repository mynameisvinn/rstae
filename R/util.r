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

#' @export
fetch_issues <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/issues", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_building_permits <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/building_permits", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_businesses <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/businesses", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_bike_lanes <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/bike_lanes", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_traffic_jams <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/traffic_jams", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_lights <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/lights", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_murals <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/murals", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_parcels <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/parcels", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_zones <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/zones", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_transit_routes <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/transit_routes", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}

#' @export
fetch_transit_vehicles <-function(municipalId){
  uri = paste("https://municipal.systems/v1/municipalities/", municipalId, "/transit_vehicles", sep="")
  r <- httr::GET(uri)
  e = httr::content(r)$results
  f = as.data.frame(do.call(rbind, e))
  f
}