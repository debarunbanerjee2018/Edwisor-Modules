library(mongolite) #inhereting the Mongolite package to communicate with MongoDB and R
setwd("Z:/Edwiser") #Setting the Working Directory
post=data.table::fread("Post.csv") #Post.csv is the name of the file which we are going to store in MongoDB
names(post)
names(post) = gsub(" ","",names(post)) #to remove unnecessary whitespaces from Column names
names(post)
my_collection = mongo(collection = "post", db = "Edwisor") # create connection, database and collection
my_collection$insert(post)
my_collection$iterate()$one() #checking and comparing the first itteration after saving
