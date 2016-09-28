


library(httr)

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
geo_api("Newyork,47")

