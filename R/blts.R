blts <- function (gnwDataDirectory="gnw-data"){
		setwd(gnwDataDirectory)
		readGNW("1")
		triplets = extractTriplets("1")
		save(triplets, file=paste("triplet1", 
        ".RData", sep = ""))
	}