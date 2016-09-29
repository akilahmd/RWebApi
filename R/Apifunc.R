library(httr)
#' Geocoding response from Google Map Api 
#'
#' \code{geo_api function} returns the geocoding responses of it's argument(given adress).
#'
#' This is a Web Api funntion which gets geographical information of a given adress from the Google Map.
#'
#' @param ... adress of any place aound the globe.
#' @param valid adress name of a place.
#' @return All the contents of the adress speciefied as input, 
#'        including the Geocoding longitude and latitude of the given place.
#'   \url{https://developers.google.com/maps/} 
#'   
#' @examples
#' geo_api("Newyork")
#' geo_api("Asmara")
#' 
#'@export




geo_api<-function(address){
  

  quary<-"https://maps.googleapis.com/maps/api/geocode/json"
  address<- gsub("\\[]","\\+", address)
  mykey="AIzaSyAkdy_DvV2xo3CkHKpVmgNfCpM7hxmsAEw"
  totalurl<-paste(quary,"?address=",address,"&key",mykey, sep = "")


output<-GET(url=totalurl)

http_status(output)

data<-content(output)

return(data)
}

geo_api("???")
geo_api("1600+Amphitheatre+Parkway,+Mountain+View,+CA")
geo_api("Paris,France")
geo_api("Paris,France")$results[[1]]$geometry$bounds$southwest$lat
geo_api("Paris,France")$results[[1]]$geometry$bounds$southwest$lng
geo_api("Paris,France")$results[[1]]$formatted_address
