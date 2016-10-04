#' Geo Web Api: A package that takes address and gives out Longitude, Latitude and the Name of the location, by incorporating with the google geo codes .
#'
#' The Geo Web Api package provides one function called geo_api.
#' 
#' @section geo_api function:it takes address as a string, and retruns coordinates and location name as per google geo codes.
#'  
#'@param ... adress of any place aound the globe.
#' @param valid adress name of a place.
#' @return All the contents of the adress speciefied as input, 
#'        including the Geocoding longitude and latitude of the given place.
#'   \url{https://developers.google.com/maps/} 
#'
#' @examples
#' geo_api("Newyork")
#' geo_api("Asmara")
#' @docType package
#' @name RWebApi
NULL