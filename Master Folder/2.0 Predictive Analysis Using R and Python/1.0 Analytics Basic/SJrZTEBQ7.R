#removing existing R instances

rm(list = ls())

#Setting working directory

setwd("Z:/Edwiser/data01s2l1")

#checking the dorectory

getwd()

#loading the given CSV

imdb = read.csv("IMDB_data.csv")

#1.	Write R code using data "IMDB_data" to 

#a.	Load CSV in R by skipping second row.

imdb_data = read.csv("IMDB_data.csv", header = T, skip = 2)

#b.	Extract the unique genres and its count and store in data frame with index key.

imdb_genre= unique(imdb$Genre)
#taking the length of the unique values
genre_length=length(imdb_genre)
#indexing to data frame
df_genre=data.frame(index=(1:genre_length),imdb_genre)

#c.	Convert the required data types

imdb$Plot=as.character(imdb$Plot)
imdb$Title=as.character(imdb$Title)
imdb$Poster=as.character(imdb$Poster)
imdb$Genre=as.character(imdb$Genre)
imdb$imdbID=as.character(imdb$imdbID)
imdb$Language=as.character(imdb$Language)
imdb$imdbVotes=as.factor(imdb$imdbVotes)
imdb$imdbRating=as.factor(imdb$imdbRating)

#d.	Sort the genre by its name	
imdb[,sort("Genre")]
#e.	Create new variable whose values should be square of difference between imdbrating and imdbvotes.
imdb$newvar=(imdb$imdbVotes - imdb$imdbRating)^2