## ------------------------------------------------------------------------

  geo_api<-function(address){
  

  quary<-"https://maps.googleapis.com/maps/api/geocode/json"
  address<- gsub("\\[]","\\+", address)
  mykey="AIzaSyAkdy_DvV2xo3CkHKpVmgNfCpM7hxmsAEw"
  totalurl<-paste(quary,"?address=",address,"&key",mykey, sep = "")


output<-GET(url=totalurl)

http_status(output)

data<-content(output)
latitude<-data$results[[1]]$geometry$location$lat

longitude<-data$results[[1]]$geometry$location$lng

location<-data$results[[1]]$formatted_address

final<-data.frame(latitude,longitude,location)

return(final)

}


