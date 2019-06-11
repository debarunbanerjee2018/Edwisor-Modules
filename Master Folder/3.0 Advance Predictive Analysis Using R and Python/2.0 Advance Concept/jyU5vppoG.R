#We use “httr” library to connect R with any public api. The URL in the query has been generated from OMDB site clicking on “Get an API”. 

library(httr)
query <- "http://www.omdbapi.com/?i=tt3896198&apikey=99cdd7e8"
GET(url = query)
output <-GET(url = query)
Data <- content(output)

