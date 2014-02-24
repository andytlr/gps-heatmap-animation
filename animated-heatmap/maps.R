# To Install Dependencies
# install.packages("plotKML")
# When asked to choose a mirror with XQuartz, if you don't have it, go download XQuartz and try again.

# To Run
# R CMD BATCH maps.R

library(plotKML)

# GPX files downloaded from Runkeeper
files <- dir(pattern = "\\.gpx")

# Consolidate routes in one drata frame
index <- c()
latitude <- c()
longitude <- c()
for (i in 1:length(files)) {

	route <- readGPX(files[i])
	location <- route$tracks[[1]][[1]]

	index <- c(index, rep(i, dim(location)[1]))
	latitude <- c(latitude, location$lat)
	longitude <- c(longitude, location$lon)
}
routes <- data.frame(cbind(index, latitude, longitude))

# Map the routes
ids <- unique(index)
plot(routes$longitude, routes$latitude, type="n", axes=FALSE, xlab="", ylab="", main="", asp=1)
for (i in 1:length(ids)) {
	currRoute <- subset(routes, index==ids[i])
	lines(currRoute$longitude, currRoute$latitude, col="#00000020")
}
