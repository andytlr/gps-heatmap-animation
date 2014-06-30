# Script from FlowingData
# http://flowingdata.com/2014/02/05/where-people-run/
# To Run: `R CMD BATCH maps.R`

library(plotKML)

# The below line will generate an SVG rather than a PDF. Although it contains inline styles that D3 can't override.
# I'm yet to work out how to strip these styles with R.
# svg('chart.svg')

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
